
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;
struct sshkey {scalar_t__ type; scalar_t__ ecdsa_nid; } ;
struct ssh {int compat; struct kex* kex; } ;
struct kex {int (* verify_host_key ) (struct sshkey*,struct ssh*) ;scalar_t__ hostkey_type; scalar_t__ hostkey_nid; size_t session_id_len; int * ec_client_key; int * session_id; int hostkey_alg; int peer; int my; int server_version_string; int client_version_string; int hash_alg; int * ec_group; } ;
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
 int EC_KEY_get0_public_key (int *) ;
 int EC_POINT_clear_free (int *) ;
 int * EC_POINT_new (int const*) ;
 scalar_t__ KEY_ECDSA ;
 int SSH_DIGEST_MAX_LENGTH ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_KEY_TYPE_MISMATCH ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 int SSH_ERR_MESSAGE_INCOMPLETE ;
 int SSH_ERR_SIGNATURE_INVALID ;
 int dump_digest (char*,int *,size_t) ;
 int explicit_bzero (int *,size_t) ;
 int fputs (char*,int ) ;
 int free (int *) ;
 int kex_derive_keys_bn (struct ssh*,int *,size_t,int *) ;
 int kex_ecdh_hash (int ,int const*,int ,int ,int ,int ,int ,int ,int *,size_t,int ,int *,int *,int *,size_t*) ;
 int kex_send_newkeys (struct ssh*) ;
 void* malloc (size_t) ;
 int memcpy (int *,int *,size_t) ;
 int sshbuf_len (int ) ;
 int sshbuf_ptr (int ) ;
 int sshkey_dump_ec_point (int const*,int *) ;
 scalar_t__ sshkey_ec_validate_public (int const*,int *) ;
 int sshkey_free (struct sshkey*) ;
 int sshkey_from_blob (int *,size_t,struct sshkey**) ;
 int sshkey_verify (struct sshkey*,int *,size_t,int *,size_t,int ,int ) ;
 int sshpkt_disconnect (struct ssh*,char*) ;
 int sshpkt_get_ec (struct ssh*,int *,int const*) ;
 int sshpkt_get_end (struct ssh*) ;
 int sshpkt_get_string (struct ssh*,int **,size_t*) ;
 int stderr ;
 int stub1 (struct sshkey*,struct ssh*) ;

__attribute__((used)) static int
input_kex_ecdh_reply(int type, u_int32_t seq, struct ssh *ssh)
{
 struct kex *kex = ssh->kex;
 const EC_GROUP *group;
 EC_POINT *server_public = ((void*)0);
 EC_KEY *client_key;
 BIGNUM *shared_secret = ((void*)0);
 struct sshkey *server_host_key = ((void*)0);
 u_char *server_host_key_blob = ((void*)0), *signature = ((void*)0);
 u_char *kbuf = ((void*)0);
 u_char hash[SSH_DIGEST_MAX_LENGTH];
 size_t slen, sbloblen;
 size_t klen = 0, hashlen;
 int r;

 if (kex->verify_host_key == ((void*)0)) {
  r = SSH_ERR_INVALID_ARGUMENT;
  goto out;
 }
 group = kex->ec_group;
 client_key = kex->ec_client_key;


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



 if ((server_public = EC_POINT_new(group)) == ((void*)0)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 if ((r = sshpkt_get_ec(ssh, server_public, group)) != 0 ||
     (r = sshpkt_get_string(ssh, &signature, &slen)) != 0 ||
     (r = sshpkt_get_end(ssh)) != 0)
  goto out;





 if (sshkey_ec_validate_public(group, server_public) != 0) {
  sshpkt_disconnect(ssh, "invalid server public key");
  r = SSH_ERR_MESSAGE_INCOMPLETE;
  goto out;
 }

 klen = (EC_GROUP_get_degree(group) + 7) / 8;
 if ((kbuf = malloc(klen)) == ((void*)0) ||
     (shared_secret = BN_new()) == ((void*)0)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 if (ECDH_compute_key(kbuf, klen, server_public,
     client_key, ((void*)0)) != (int)klen ||
     BN_bin2bn(kbuf, klen, shared_secret) == ((void*)0)) {
  r = SSH_ERR_LIBCRYPTO_ERROR;
  goto out;
 }





 hashlen = sizeof(hash);
 if ((r = kex_ecdh_hash(
     kex->hash_alg,
     group,
     kex->client_version_string,
     kex->server_version_string,
     sshbuf_ptr(kex->my), sshbuf_len(kex->my),
     sshbuf_ptr(kex->peer), sshbuf_len(kex->peer),
     server_host_key_blob, sbloblen,
     EC_KEY_get0_public_key(client_key),
     server_public,
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
 EC_KEY_free(kex->ec_client_key);
 kex->ec_client_key = ((void*)0);
 EC_POINT_clear_free(server_public);
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
