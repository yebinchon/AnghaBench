
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;
struct sshkey {scalar_t__ type; scalar_t__ ecdsa_nid; } ;
struct ssh {int compat; struct kex* kex; } ;
struct kex {int (* verify_host_key ) (struct sshkey*,struct ssh*) ;scalar_t__ hostkey_type; scalar_t__ hostkey_nid; int min; int max; size_t session_id_len; int * dh; int * session_id; int hostkey_alg; int nbits; int peer; int my; int server_version_string; int client_version_string; int hash_alg; } ;
typedef int hash ;
typedef int BIGNUM ;


 int * BN_bin2bn (int *,int,int *) ;
 int BN_clear_free (int *) ;
 int * BN_new () ;
 int BN_num_bits (int *) ;
 int BN_print_fp (int ,int *) ;
 int DH_compute_key (int *,int *,int *) ;
 int DH_free (int *) ;
 int DH_get0_key (int *,int const**,int *) ;
 int DH_get0_pqg (int *,int const**,int *,int const**) ;
 size_t DH_size (int *) ;
 scalar_t__ KEY_ECDSA ;
 int SSH_DIGEST_MAX_LENGTH ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_KEY_TYPE_MISMATCH ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 int SSH_ERR_MESSAGE_INCOMPLETE ;
 int SSH_ERR_SIGNATURE_INVALID ;
 int SSH_OLD_DHGEX ;
 int debug (char*,...) ;
 int dh_pub_is_valid (int *,int *) ;
 int dump_digest (char*,int *,int) ;
 int explicit_bzero (int *,size_t) ;
 int fprintf (int ,char*) ;
 int free (int *) ;
 int kex_derive_keys_bn (struct ssh*,int *,size_t,int *) ;
 int kex_send_newkeys (struct ssh*) ;
 int kexgex_hash (int ,int ,int ,int ,int ,int ,int ,int *,size_t,int,int ,int,int const*,int const*,int const*,int *,int *,int *,size_t*) ;
 void* malloc (size_t) ;
 int memcpy (int *,int *,size_t) ;
 int sshbuf_len (int ) ;
 int sshbuf_ptr (int ) ;
 int sshkey_free (struct sshkey*) ;
 int sshkey_from_blob (int *,size_t,struct sshkey**) ;
 int sshkey_verify (struct sshkey*,int *,size_t,int *,size_t,int ,int) ;
 int sshpkt_disconnect (struct ssh*,char*) ;
 int sshpkt_get_bignum2 (struct ssh*,int *) ;
 int sshpkt_get_end (struct ssh*) ;
 int sshpkt_get_string (struct ssh*,int **,size_t*) ;
 int stderr ;
 int stub1 (struct sshkey*,struct ssh*) ;

__attribute__((used)) static int
input_kex_dh_gex_reply(int type, u_int32_t seq, struct ssh *ssh)
{
 struct kex *kex = ssh->kex;
 BIGNUM *dh_server_pub = ((void*)0), *shared_secret = ((void*)0);
 const BIGNUM *pub_key, *dh_p, *dh_g;
 struct sshkey *server_host_key = ((void*)0);
 u_char *kbuf = ((void*)0), *signature = ((void*)0), *server_host_key_blob = ((void*)0);
 u_char hash[SSH_DIGEST_MAX_LENGTH];
 size_t klen = 0, slen, sbloblen, hashlen;
 int kout, r;

 debug("got SSH2_MSG_KEX_DH_GEX_REPLY");
 if (kex->verify_host_key == ((void*)0)) {
  r = SSH_ERR_INVALID_ARGUMENT;
  goto out;
 }

 if ((r = sshpkt_get_string(ssh, &server_host_key_blob,
     &sbloblen)) != 0 ||
     (r = sshkey_from_blob(server_host_key_blob, sbloblen,
     &server_host_key)) != 0)
  goto out;
 if (server_host_key->type != kex->hostkey_type ||
     (kex->hostkey_type == KEY_ECDSA &&
     server_host_key->ecdsa_nid != kex->hostkey_nid)) {
  r = SSH_ERR_KEY_TYPE_MISMATCH;
  goto out;
 }
 if (kex->verify_host_key(server_host_key, ssh) == -1) {
  r = SSH_ERR_SIGNATURE_INVALID;
  goto out;
 }

 if ((dh_server_pub = BN_new()) == ((void*)0)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }

 if ((r = sshpkt_get_bignum2(ssh, dh_server_pub)) != 0 ||
     (r = sshpkt_get_string(ssh, &signature, &slen)) != 0 ||
     (r = sshpkt_get_end(ssh)) != 0)
  goto out;






 if (!dh_pub_is_valid(kex->dh, dh_server_pub)) {
  sshpkt_disconnect(ssh, "bad server public DH value");
  r = SSH_ERR_MESSAGE_INCOMPLETE;
  goto out;
 }

 klen = DH_size(kex->dh);
 if ((kbuf = malloc(klen)) == ((void*)0) ||
     (shared_secret = BN_new()) == ((void*)0)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 if ((kout = DH_compute_key(kbuf, dh_server_pub, kex->dh)) < 0 ||
     BN_bin2bn(kbuf, kout, shared_secret) == ((void*)0)) {
  r = SSH_ERR_LIBCRYPTO_ERROR;
  goto out;
 }



 if (ssh->compat & SSH_OLD_DHGEX)
  kex->min = kex->max = -1;


 DH_get0_key(kex->dh, &pub_key, ((void*)0));
 DH_get0_pqg(kex->dh, &dh_p, ((void*)0), &dh_g);
 hashlen = sizeof(hash);
 if ((r = kexgex_hash(
     kex->hash_alg,
     kex->client_version_string,
     kex->server_version_string,
     sshbuf_ptr(kex->my), sshbuf_len(kex->my),
     sshbuf_ptr(kex->peer), sshbuf_len(kex->peer),
     server_host_key_blob, sbloblen,
     kex->min, kex->nbits, kex->max,
     dh_p, dh_g,
     pub_key,
     dh_server_pub,
     shared_secret,
     hash, &hashlen)) != 0)
  goto out;

 if ((r = sshkey_verify(server_host_key, signature, slen, hash,
     hashlen, kex->hostkey_alg, ssh->compat)) != 0)
  goto out;


 if (kex->session_id == ((void*)0)) {
  kex->session_id_len = hashlen;
  kex->session_id = malloc(kex->session_id_len);
  if (kex->session_id == ((void*)0)) {
   r = SSH_ERR_ALLOC_FAIL;
   goto out;
  }
  memcpy(kex->session_id, hash, kex->session_id_len);
 }

 if ((r = kex_derive_keys_bn(ssh, hash, hashlen, shared_secret)) == 0)
  r = kex_send_newkeys(ssh);
 out:
 explicit_bzero(hash, sizeof(hash));
 DH_free(kex->dh);
 kex->dh = ((void*)0);
 BN_clear_free(dh_server_pub);
 if (kbuf) {
  explicit_bzero(kbuf, klen);
  free(kbuf);
 }
 BN_clear_free(shared_secret);
 sshkey_free(server_host_key);
 free(server_host_key_blob);
 free(signature);
 return r;
}
