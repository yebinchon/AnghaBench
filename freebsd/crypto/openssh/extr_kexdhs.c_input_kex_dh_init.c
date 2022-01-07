
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;
struct sshkey {int dummy; } ;
struct ssh {int compat; struct kex* kex; } ;
struct kex {size_t session_id_len; int (* sign ) (struct sshkey*,struct sshkey*,int **,size_t*,int *,size_t,int ,int ) ;int * dh; int hostkey_alg; int * session_id; int my; int peer; int server_version_string; int client_version_string; int hash_alg; int hostkey_nid; int hostkey_type; struct sshkey* (* load_host_private_key ) (int ,int ,struct ssh*) ;struct sshkey* (* load_host_public_key ) (int ,int ,struct ssh*) ;} ;
typedef int hash ;
typedef int const BIGNUM ;


 int * BN_bin2bn (int *,int,int const*) ;
 int BN_clear_free (int const*) ;
 int const* BN_new () ;
 int BN_num_bits (int const*) ;
 int BN_print_fp (int ,int const*) ;
 int DH_compute_key (int *,int const*,int *) ;
 int DH_free (int *) ;
 int DH_get0_key (int *,int const**,int *) ;
 size_t DH_size (int *) ;
 int DHparams_print_fp (int ,int *) ;
 int SSH2_MSG_KEXDH_REPLY ;
 int SSH_DIGEST_MAX_LENGTH ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 int SSH_ERR_MESSAGE_INCOMPLETE ;
 int SSH_ERR_NO_HOSTKEY_LOADED ;
 int debug (char*,int ) ;
 int dh_pub_is_valid (int *,int const*) ;
 int dump_digest (char*,int *,int) ;
 int explicit_bzero (int *,size_t) ;
 int fprintf (int ,char*) ;
 int free (int *) ;
 int kex_derive_keys_bn (struct ssh*,int *,size_t,int const*) ;
 int kex_dh_hash (int ,int ,int ,int ,int ,int ,int ,int *,size_t,int const*,int const*,int const*,int *,size_t*) ;
 int kex_send_newkeys (struct ssh*) ;
 void* malloc (size_t) ;
 int memcpy (int *,int *,size_t) ;
 int sshbuf_len (int ) ;
 int sshbuf_ptr (int ) ;
 int sshkey_to_blob (struct sshkey*,int **,size_t*) ;
 int sshpkt_disconnect (struct ssh*,char*) ;
 int sshpkt_get_bignum2 (struct ssh*,int const*) ;
 int sshpkt_get_end (struct ssh*) ;
 int sshpkt_put_bignum2 (struct ssh*,int const*) ;
 int sshpkt_put_string (struct ssh*,int *,size_t) ;
 int sshpkt_send (struct ssh*) ;
 int sshpkt_start (struct ssh*,int ) ;
 int stderr ;
 struct sshkey* stub1 (int ,int ,struct ssh*) ;
 struct sshkey* stub2 (int ,int ,struct ssh*) ;
 int stub3 (struct sshkey*,struct sshkey*,int **,size_t*,int *,size_t,int ,int ) ;

int
input_kex_dh_init(int type, u_int32_t seq, struct ssh *ssh)
{
 struct kex *kex = ssh->kex;
 BIGNUM *shared_secret = ((void*)0), *dh_client_pub = ((void*)0);
 const BIGNUM *pub_key;
 struct sshkey *server_host_public, *server_host_private;
 u_char *kbuf = ((void*)0), *signature = ((void*)0), *server_host_key_blob = ((void*)0);
 u_char hash[SSH_DIGEST_MAX_LENGTH];
 size_t sbloblen, slen;
 size_t klen = 0, hashlen;
 int kout, r;

 if (kex->load_host_public_key == ((void*)0) ||
     kex->load_host_private_key == ((void*)0)) {
  r = SSH_ERR_INVALID_ARGUMENT;
  goto out;
 }
 server_host_public = kex->load_host_public_key(kex->hostkey_type,
     kex->hostkey_nid, ssh);
 server_host_private = kex->load_host_private_key(kex->hostkey_type,
     kex->hostkey_nid, ssh);
 if (server_host_public == ((void*)0)) {
  r = SSH_ERR_NO_HOSTKEY_LOADED;
  goto out;
 }


 if ((dh_client_pub = BN_new()) == ((void*)0)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 DH_get0_key(kex->dh, &pub_key, ((void*)0));
 if ((r = sshpkt_get_bignum2(ssh, dh_client_pub)) != 0 ||
     (r = sshpkt_get_end(ssh)) != 0)
  goto out;
 if (!dh_pub_is_valid(kex->dh, dh_client_pub)) {
  sshpkt_disconnect(ssh, "bad client public DH value");
  r = SSH_ERR_MESSAGE_INCOMPLETE;
  goto out;
 }

 klen = DH_size(kex->dh);
 if ((kbuf = malloc(klen)) == ((void*)0) ||
     (shared_secret = BN_new()) == ((void*)0)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 if ((kout = DH_compute_key(kbuf, dh_client_pub, kex->dh)) < 0 ||
     BN_bin2bn(kbuf, kout, shared_secret) == ((void*)0)) {
  r = SSH_ERR_LIBCRYPTO_ERROR;
  goto out;
 }



 if ((r = sshkey_to_blob(server_host_public, &server_host_key_blob,
     &sbloblen)) != 0)
  goto out;

 hashlen = sizeof(hash);
 if ((r = kex_dh_hash(
     kex->hash_alg,
     kex->client_version_string,
     kex->server_version_string,
     sshbuf_ptr(kex->peer), sshbuf_len(kex->peer),
     sshbuf_ptr(kex->my), sshbuf_len(kex->my),
     server_host_key_blob, sbloblen,
     dh_client_pub,
     pub_key,
     shared_secret,
     hash, &hashlen)) != 0)
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


 if ((r = kex->sign(server_host_private, server_host_public, &signature,
      &slen, hash, hashlen, kex->hostkey_alg, ssh->compat)) < 0)
  goto out;




 if ((r = sshpkt_start(ssh, SSH2_MSG_KEXDH_REPLY)) != 0 ||
     (r = sshpkt_put_string(ssh, server_host_key_blob, sbloblen)) != 0 ||
     (r = sshpkt_put_bignum2(ssh, pub_key)) != 0 ||
     (r = sshpkt_put_string(ssh, signature, slen)) != 0 ||
     (r = sshpkt_send(ssh)) != 0)
  goto out;

 if ((r = kex_derive_keys_bn(ssh, hash, hashlen, shared_secret)) == 0)
  r = kex_send_newkeys(ssh);
 out:
 explicit_bzero(hash, sizeof(hash));
 DH_free(kex->dh);
 kex->dh = ((void*)0);
 BN_clear_free(dh_client_pub);
 if (kbuf) {
  explicit_bzero(kbuf, klen);
  free(kbuf);
 }
 BN_clear_free(shared_secret);
 free(server_host_key_blob);
 free(signature);
 return r;
}
