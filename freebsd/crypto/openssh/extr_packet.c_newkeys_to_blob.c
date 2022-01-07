
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sshmac {int key_len; int key; int enabled; int name; } ;
struct sshenc {int cipher; int iv_len; int iv; int key_len; int key; int block_size; int enabled; int name; } ;
struct sshcomp {int name; int type; } ;
struct sshcipher_ctx {int dummy; } ;
struct sshbuf {int dummy; } ;
struct ssh {TYPE_1__* state; } ;
struct newkeys {struct sshcomp comp; struct sshmac mac; struct sshenc enc; } ;
struct TYPE_2__ {struct sshcipher_ctx* receive_context; struct sshcipher_ctx* send_context; struct newkeys** newkeys; } ;


 int MODE_OUT ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 scalar_t__ cipher_authlen (int ) ;
 int cipher_get_keyiv (struct sshcipher_ctx*,int ,int ) ;
 int sshbuf_free (struct sshbuf*) ;
 struct sshbuf* sshbuf_new () ;
 int sshbuf_put_cstring (struct sshbuf*,int ) ;
 int sshbuf_put_string (struct sshbuf*,int ,int ) ;
 int sshbuf_put_stringb (struct sshbuf*,struct sshbuf*) ;
 int sshbuf_put_u32 (struct sshbuf*,int ) ;

__attribute__((used)) static int
newkeys_to_blob(struct sshbuf *m, struct ssh *ssh, int mode)
{
 struct sshbuf *b;
 struct sshcipher_ctx *cc;
 struct sshcomp *comp;
 struct sshenc *enc;
 struct sshmac *mac;
 struct newkeys *newkey;
 int r;

 if ((newkey = ssh->state->newkeys[mode]) == ((void*)0))
  return SSH_ERR_INTERNAL_ERROR;
 enc = &newkey->enc;
 mac = &newkey->mac;
 comp = &newkey->comp;
 cc = (mode == MODE_OUT) ? ssh->state->send_context :
     ssh->state->receive_context;
 if ((r = cipher_get_keyiv(cc, enc->iv, enc->iv_len)) != 0)
  return r;
 if ((b = sshbuf_new()) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 if ((r = sshbuf_put_cstring(b, enc->name)) != 0 ||
     (r = sshbuf_put_u32(b, enc->enabled)) != 0 ||
     (r = sshbuf_put_u32(b, enc->block_size)) != 0 ||
     (r = sshbuf_put_string(b, enc->key, enc->key_len)) != 0 ||
     (r = sshbuf_put_string(b, enc->iv, enc->iv_len)) != 0)
  goto out;
 if (cipher_authlen(enc->cipher) == 0) {
  if ((r = sshbuf_put_cstring(b, mac->name)) != 0 ||
      (r = sshbuf_put_u32(b, mac->enabled)) != 0 ||
      (r = sshbuf_put_string(b, mac->key, mac->key_len)) != 0)
   goto out;
 }
 if ((r = sshbuf_put_u32(b, comp->type)) != 0 ||
     (r = sshbuf_put_cstring(b, comp->name)) != 0)
  goto out;
 r = sshbuf_put_stringb(m, b);
 out:
 sshbuf_free(b);
 return r;
}
