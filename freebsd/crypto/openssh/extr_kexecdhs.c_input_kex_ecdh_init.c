
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;
struct sshkey {int dummy; } ;
struct ssh {int compat; struct kex* kex; } ;
struct kex {size_t session_id_len; int (* sign ) (struct sshkey*,struct sshkey*,int **,size_t*,int *,size_t,int ,int ) ;int * ec_client_key; int hostkey_alg; int * session_id; int my; int peer; int server_version_string; int client_version_string; int hash_alg; int hostkey_nid; int hostkey_type; struct sshkey* (* load_host_private_key ) (int ,int ,struct ssh*) ;struct sshkey* (* load_host_public_key ) (int ,int ,struct ssh*) ;int ec_nid; } ;
typedef int hash ;
typedef int EC_POINT ;
typedef int EC_KEY ;
typedef int EC_GROUP ;
typedef int BIGNUM ;


 int * BN_bin2bn (int *,size_t,int *) ;
 int BN_clear_free (int *) ;
 int * BN_new () ;
 int ECDH_compute_key (int *,size_t,int *,int *,int *) ;
 int EC_GROUP_get_degree (int const*) ;
 int EC_KEY_free (int *) ;
 int EC_KEY_generate_key (int *) ;
 int * EC_KEY_get0_group (int *) ;
 int * EC_KEY_get0_public_key (int *) ;
 int * EC_KEY_new_by_curve_name (int ) ;
 int * EC_POINT_new (int const*) ;
 int SSH2_MSG_KEX_ECDH_REPLY ;
 int SSH_DIGEST_MAX_LENGTH ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 int SSH_ERR_MESSAGE_INCOMPLETE ;
 int SSH_ERR_NO_HOSTKEY_LOADED ;
 int dump_digest (char*,int *,size_t) ;
 int explicit_bzero (int *,size_t) ;
 int fputs (char*,int ) ;
 int free (int *) ;
 int kex_derive_keys_bn (struct ssh*,int *,size_t,int *) ;
 int kex_ecdh_hash (int ,int const*,int ,int ,int ,int ,int ,int ,int *,size_t,int *,int *,int *,int *,size_t*) ;
 int kex_send_newkeys (struct ssh*) ;
 void* malloc (size_t) ;
 int memcpy (int *,int *,size_t) ;
 int sshbuf_len (int ) ;
 int sshbuf_ptr (int ) ;
 int sshkey_dump_ec_key (int *) ;
 int sshkey_dump_ec_point (int const*,int *) ;
 scalar_t__ sshkey_ec_validate_public (int const*,int *) ;
 int sshkey_to_blob (struct sshkey*,int **,size_t*) ;
 int sshpkt_disconnect (struct ssh*,char*) ;
 int sshpkt_get_ec (struct ssh*,int *,int const*) ;
 int sshpkt_get_end (struct ssh*) ;
 int sshpkt_put_ec (struct ssh*,int const*,int const*) ;
 int sshpkt_put_string (struct ssh*,int *,size_t) ;
 int sshpkt_send (struct ssh*) ;
 int sshpkt_start (struct ssh*,int ) ;
 int stderr ;
 struct sshkey* stub1 (int ,int ,struct ssh*) ;
 struct sshkey* stub2 (int ,int ,struct ssh*) ;
 int stub3 (struct sshkey*,struct sshkey*,int **,size_t*,int *,size_t,int ,int ) ;

__attribute__((used)) static int
input_kex_ecdh_init(int type, u_int32_t seq, struct ssh *ssh)
{
 struct kex *kex = ssh->kex;
 EC_POINT *client_public;
 EC_KEY *server_key = ((void*)0);
 const EC_GROUP *group;
 const EC_POINT *public_key;
 BIGNUM *shared_secret = ((void*)0);
 struct sshkey *server_host_private, *server_host_public;
 u_char *server_host_key_blob = ((void*)0), *signature = ((void*)0);
 u_char *kbuf = ((void*)0);
 u_char hash[SSH_DIGEST_MAX_LENGTH];
 size_t slen, sbloblen;
 size_t klen = 0, hashlen;
 int r;

 if ((server_key = EC_KEY_new_by_curve_name(kex->ec_nid)) == ((void*)0)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 if (EC_KEY_generate_key(server_key) != 1) {
  r = SSH_ERR_LIBCRYPTO_ERROR;
  goto out;
 }
 group = EC_KEY_get0_group(server_key);






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
 if ((client_public = EC_POINT_new(group)) == ((void*)0)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 if ((r = sshpkt_get_ec(ssh, client_public, group)) != 0 ||
     (r = sshpkt_get_end(ssh)) != 0)
  goto out;





 if (sshkey_ec_validate_public(group, client_public) != 0) {
  sshpkt_disconnect(ssh, "invalid client public key");
  r = SSH_ERR_MESSAGE_INCOMPLETE;
  goto out;
 }


 klen = (EC_GROUP_get_degree(group) + 7) / 8;
 if ((kbuf = malloc(klen)) == ((void*)0) ||
     (shared_secret = BN_new()) == ((void*)0)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 if (ECDH_compute_key(kbuf, klen, client_public,
     server_key, ((void*)0)) != (int)klen ||
     BN_bin2bn(kbuf, klen, shared_secret) == ((void*)0)) {
  r = SSH_ERR_LIBCRYPTO_ERROR;
  goto out;
 }





 if ((r = sshkey_to_blob(server_host_public, &server_host_key_blob,
     &sbloblen)) != 0)
  goto out;
 hashlen = sizeof(hash);
 if ((r = kex_ecdh_hash(
     kex->hash_alg,
     group,
     kex->client_version_string,
     kex->server_version_string,
     sshbuf_ptr(kex->peer), sshbuf_len(kex->peer),
     sshbuf_ptr(kex->my), sshbuf_len(kex->my),
     server_host_key_blob, sbloblen,
     client_public,
     EC_KEY_get0_public_key(server_key),
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



 public_key = EC_KEY_get0_public_key(server_key);

 if ((r = sshpkt_start(ssh, SSH2_MSG_KEX_ECDH_REPLY)) != 0 ||
     (r = sshpkt_put_string(ssh, server_host_key_blob, sbloblen)) != 0 ||
     (r = sshpkt_put_ec(ssh, public_key, group)) != 0 ||
     (r = sshpkt_put_string(ssh, signature, slen)) != 0 ||
     (r = sshpkt_send(ssh)) != 0)
  goto out;

 if ((r = kex_derive_keys_bn(ssh, hash, hashlen, shared_secret)) == 0)
  r = kex_send_newkeys(ssh);
 out:
 explicit_bzero(hash, sizeof(hash));
 EC_KEY_free(kex->ec_client_key);
 kex->ec_client_key = ((void*)0);
 EC_KEY_free(server_key);
 if (kbuf) {
  explicit_bzero(kbuf, klen);
  free(kbuf);
 }
 BN_clear_free(shared_secret);
 free(server_host_key_blob);
 free(signature);
 return r;
}
