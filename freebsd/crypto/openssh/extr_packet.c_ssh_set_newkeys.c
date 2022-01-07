
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int64_t ;
struct sshmac {int enabled; } ;
struct sshenc {int block_size; int iv_len; int iv; int key_len; int key; int cipher; } ;
struct sshcomp {scalar_t__ type; int enabled; } ;
struct sshcipher_ctx {int dummy; } ;
struct ssh {TYPE_1__* kex; struct session_state* state; } ;
struct packet_state {scalar_t__ blocks; scalar_t__ packets; scalar_t__ bytes; } ;
struct session_state {int max_blocks_out; int max_blocks_in; int cipher_warning_done; int rekey_limit; scalar_t__ after_authentication; TYPE_2__** newkeys; struct packet_state p_send; struct packet_state p_read; struct sshcipher_ctx* receive_context; struct sshcipher_ctx* send_context; } ;
struct TYPE_4__ {struct sshcomp comp; struct sshmac mac; struct sshenc enc; } ;
struct TYPE_3__ {TYPE_2__** newkeys; } ;


 int CIPHER_DECRYPT ;
 int CIPHER_ENCRYPT ;
 scalar_t__ COMP_DELAYED ;
 scalar_t__ COMP_ZLIB ;
 int DBG (int ) ;
 int MINIMUM (int,int) ;
 int MODE_OUT ;
 int SSH_ERR_INTERNAL_ERROR ;
 scalar_t__ cipher_authlen (int ) ;
 int cipher_free (struct sshcipher_ctx*) ;
 int cipher_init (struct sshcipher_ctx**,int ,int ,int ,int ,int ,int) ;
 char* cipher_warning_message (struct sshcipher_ctx*) ;
 int debug (char*,unsigned long long,...) ;
 int debug2 (char*,int) ;
 int error (char*,char const*) ;
 int kex_free_newkeys (TYPE_2__*) ;
 int mac_init (struct sshmac*) ;
 int ssh_packet_init_compression (struct ssh*) ;
 int start_compression_in (struct ssh*) ;
 int start_compression_out (struct ssh*,int) ;

int
ssh_set_newkeys(struct ssh *ssh, int mode)
{
 struct session_state *state = ssh->state;
 struct sshenc *enc;
 struct sshmac *mac;
 struct sshcomp *comp;
 struct sshcipher_ctx **ccp;
 struct packet_state *ps;
 u_int64_t *max_blocks;
 const char *wmsg;
 int r, crypt_type;

 debug2("set_newkeys: mode %d", mode);

 if (mode == MODE_OUT) {
  ccp = &state->send_context;
  crypt_type = CIPHER_ENCRYPT;
  ps = &state->p_send;
  max_blocks = &state->max_blocks_out;
 } else {
  ccp = &state->receive_context;
  crypt_type = CIPHER_DECRYPT;
  ps = &state->p_read;
  max_blocks = &state->max_blocks_in;
 }
 if (state->newkeys[mode] != ((void*)0)) {
  debug("set_newkeys: rekeying, input %llu bytes %llu blocks, "
     "output %llu bytes %llu blocks",
     (unsigned long long)state->p_read.bytes,
     (unsigned long long)state->p_read.blocks,
     (unsigned long long)state->p_send.bytes,
     (unsigned long long)state->p_send.blocks);
  cipher_free(*ccp);
  *ccp = ((void*)0);
  kex_free_newkeys(state->newkeys[mode]);
  state->newkeys[mode] = ((void*)0);
 }

 ps->packets = ps->blocks = 0;

 if ((state->newkeys[mode] = ssh->kex->newkeys[mode]) == ((void*)0))
  return SSH_ERR_INTERNAL_ERROR;
 ssh->kex->newkeys[mode] = ((void*)0);
 enc = &state->newkeys[mode]->enc;
 mac = &state->newkeys[mode]->mac;
 comp = &state->newkeys[mode]->comp;
 if (cipher_authlen(enc->cipher) == 0) {
  if ((r = mac_init(mac)) != 0)
   return r;
 }
 mac->enabled = 1;
 DBG(debug("cipher_init_context: %d", mode));
 if ((r = cipher_init(ccp, enc->cipher, enc->key, enc->key_len,
     enc->iv, enc->iv_len, crypt_type)) != 0)
  return r;
 if (!state->cipher_warning_done &&
     (wmsg = cipher_warning_message(*ccp)) != ((void*)0)) {
  error("Warning: %s", wmsg);
  state->cipher_warning_done = 1;
 }




 if ((comp->type == COMP_ZLIB ||
     (comp->type == COMP_DELAYED &&
      state->after_authentication)) && comp->enabled == 0) {
  if ((r = ssh_packet_init_compression(ssh)) < 0)
   return r;
  if (mode == MODE_OUT) {
   if ((r = start_compression_out(ssh, 6)) != 0)
    return r;
  } else {
   if ((r = start_compression_in(ssh)) != 0)
    return r;
  }
  comp->enabled = 1;
 }





 if (enc->block_size >= 16)
  *max_blocks = (u_int64_t)1 << (enc->block_size*2);
 else
  *max_blocks = ((u_int64_t)1 << 30) / enc->block_size;
 if (state->rekey_limit)
  *max_blocks = MINIMUM(*max_blocks,
      state->rekey_limit / enc->block_size);
 debug("rekey after %llu blocks", (unsigned long long)*max_blocks);
 return 0;
}
