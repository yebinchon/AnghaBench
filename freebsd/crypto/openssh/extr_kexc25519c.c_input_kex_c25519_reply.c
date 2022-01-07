
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;
struct sshkey {scalar_t__ type; scalar_t__ ecdsa_nid; } ;
struct sshbuf {int dummy; } ;
struct ssh {int compat; struct kex* kex; } ;
struct kex {int (* verify_host_key ) (struct sshkey*,struct ssh*) ;scalar_t__ hostkey_type; scalar_t__ hostkey_nid; size_t session_id_len; int * c25519_client_key; int * session_id; int hostkey_alg; int c25519_client_pubkey; struct sshbuf* peer; struct sshbuf* my; int server_version_string; int client_version_string; int hash_alg; } ;
typedef int hash ;


 size_t CURVE25519_SIZE ;
 scalar_t__ KEY_ECDSA ;
 int SSH_DIGEST_MAX_LENGTH ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_KEY_TYPE_MISMATCH ;
 int SSH_ERR_SIGNATURE_INVALID ;
 int dump_digest (char*,int *,size_t) ;
 int explicit_bzero (int *,int) ;
 int free (int *) ;
 int kex_c25519_hash (int ,int ,int ,int ,int ,int ,int ,int *,size_t,int ,int *,int ,int ,int *,size_t*) ;
 int kex_derive_keys (struct ssh*,int *,size_t,struct sshbuf*) ;
 int kex_send_newkeys (struct ssh*) ;
 int kexc25519_shared_key (int *,int *,struct sshbuf*) ;
 int * malloc (size_t) ;
 int memcpy (int *,int *,size_t) ;
 int sshbuf_free (struct sshbuf*) ;
 int sshbuf_len (struct sshbuf*) ;
 struct sshbuf* sshbuf_new () ;
 int sshbuf_ptr (struct sshbuf*) ;
 int sshkey_free (struct sshkey*) ;
 int sshkey_from_blob (int *,size_t,struct sshkey**) ;
 int sshkey_verify (struct sshkey*,int *,size_t,int *,size_t,int ,int ) ;
 int sshpkt_get_end (struct ssh*) ;
 int sshpkt_get_string (struct ssh*,int **,size_t*) ;
 int stub1 (struct sshkey*,struct ssh*) ;

__attribute__((used)) static int
input_kex_c25519_reply(int type, u_int32_t seq, struct ssh *ssh)
{
 struct kex *kex = ssh->kex;
 struct sshkey *server_host_key = ((void*)0);
 struct sshbuf *shared_secret = ((void*)0);
 u_char *server_pubkey = ((void*)0);
 u_char *server_host_key_blob = ((void*)0), *signature = ((void*)0);
 u_char hash[SSH_DIGEST_MAX_LENGTH];
 size_t slen, pklen, sbloblen, hashlen;
 int r;

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



 if ((r = sshpkt_get_string(ssh, &server_pubkey, &pklen)) != 0 ||
     (r = sshpkt_get_string(ssh, &signature, &slen)) != 0 ||
     (r = sshpkt_get_end(ssh)) != 0)
  goto out;
 if (pklen != CURVE25519_SIZE) {
  r = SSH_ERR_SIGNATURE_INVALID;
  goto out;
 }





 if ((shared_secret = sshbuf_new()) == ((void*)0)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 if ((r = kexc25519_shared_key(kex->c25519_client_key, server_pubkey,
     shared_secret)) < 0)
  goto out;


 hashlen = sizeof(hash);
 if ((r = kex_c25519_hash(
     kex->hash_alg,
     kex->client_version_string,
     kex->server_version_string,
     sshbuf_ptr(kex->my), sshbuf_len(kex->my),
     sshbuf_ptr(kex->peer), sshbuf_len(kex->peer),
     server_host_key_blob, sbloblen,
     kex->c25519_client_pubkey,
     server_pubkey,
     sshbuf_ptr(shared_secret), sshbuf_len(shared_secret),
     hash, &hashlen)) < 0)
  goto out;

 if ((r = sshkey_verify(server_host_key, signature, slen, hash, hashlen,
     kex->hostkey_alg, ssh->compat)) != 0)
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

 if ((r = kex_derive_keys(ssh, hash, hashlen, shared_secret)) == 0)
  r = kex_send_newkeys(ssh);
out:
 explicit_bzero(hash, sizeof(hash));
 explicit_bzero(kex->c25519_client_key, sizeof(kex->c25519_client_key));
 free(server_host_key_blob);
 free(server_pubkey);
 free(signature);
 sshkey_free(server_host_key);
 sshbuf_free(shared_secret);
 return r;
}
