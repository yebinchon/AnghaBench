
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;
struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;
struct ssh {int compat; struct kex* kex; } ;
struct kex {size_t session_id_len; int (* sign ) (struct sshkey*,struct sshkey*,int **,size_t*,int *,size_t,int ,int ) ;int hostkey_alg; int * session_id; struct sshbuf* my; struct sshbuf* peer; int server_version_string; int client_version_string; int hash_alg; int hostkey_nid; int hostkey_type; struct sshkey* (* load_host_private_key ) (int ,int ,struct ssh*) ;struct sshkey* (* load_host_public_key ) (int ,int ,struct ssh*) ;} ;
typedef int server_pubkey ;
typedef int server_key ;
typedef int hash ;


 int CURVE25519_SIZE ;
 int SSH2_MSG_KEX_ECDH_REPLY ;
 int SSH_DIGEST_MAX_LENGTH ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_NO_HOSTKEY_LOADED ;
 int SSH_ERR_SIGNATURE_INVALID ;
 int dump_digest (char*,int *,int) ;
 int explicit_bzero (int *,int) ;
 int free (int *) ;
 int kex_c25519_hash (int ,int ,int ,int ,int ,int ,int ,int *,size_t,int *,int *,int ,int ,int *,size_t*) ;
 int kex_derive_keys (struct ssh*,int *,size_t,struct sshbuf*) ;
 int kex_send_newkeys (struct ssh*) ;
 int kexc25519_keygen (int *,int *) ;
 int kexc25519_shared_key (int *,int *,struct sshbuf*) ;
 int * malloc (size_t) ;
 int memcpy (int *,int *,size_t) ;
 int sshbuf_free (struct sshbuf*) ;
 int sshbuf_len (struct sshbuf*) ;
 struct sshbuf* sshbuf_new () ;
 int sshbuf_ptr (struct sshbuf*) ;
 int sshkey_to_blob (struct sshkey*,int **,size_t*) ;
 int sshpkt_get_end (struct ssh*) ;
 int sshpkt_get_string (struct ssh*,int **,size_t*) ;
 int sshpkt_put_string (struct ssh*,int *,size_t) ;
 int sshpkt_send (struct ssh*) ;
 int sshpkt_start (struct ssh*,int ) ;
 struct sshkey* stub1 (int ,int ,struct ssh*) ;
 struct sshkey* stub2 (int ,int ,struct ssh*) ;
 int stub3 (struct sshkey*,struct sshkey*,int **,size_t*,int *,size_t,int ,int ) ;

__attribute__((used)) static int
input_kex_c25519_init(int type, u_int32_t seq, struct ssh *ssh)
{
 struct kex *kex = ssh->kex;
 struct sshkey *server_host_private, *server_host_public;
 struct sshbuf *shared_secret = ((void*)0);
 u_char *server_host_key_blob = ((void*)0), *signature = ((void*)0);
 u_char server_key[CURVE25519_SIZE];
 u_char *client_pubkey = ((void*)0);
 u_char server_pubkey[CURVE25519_SIZE];
 u_char hash[SSH_DIGEST_MAX_LENGTH];
 size_t slen, pklen, sbloblen, hashlen;
 int r;


 kexc25519_keygen(server_key, server_pubkey);



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

 if ((r = sshpkt_get_string(ssh, &client_pubkey, &pklen)) != 0 ||
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
 if ((r = kexc25519_shared_key(server_key, client_pubkey,
     shared_secret)) < 0)
  goto out;


 if ((r = sshkey_to_blob(server_host_public, &server_host_key_blob,
     &sbloblen)) != 0)
  goto out;
 hashlen = sizeof(hash);
 if ((r = kex_c25519_hash(
     kex->hash_alg,
     kex->client_version_string,
     kex->server_version_string,
     sshbuf_ptr(kex->peer), sshbuf_len(kex->peer),
     sshbuf_ptr(kex->my), sshbuf_len(kex->my),
     server_host_key_blob, sbloblen,
     client_pubkey,
     server_pubkey,
     sshbuf_ptr(shared_secret), sshbuf_len(shared_secret),
     hash, &hashlen)) < 0)
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


 if ((r = sshpkt_start(ssh, SSH2_MSG_KEX_ECDH_REPLY)) != 0 ||
     (r = sshpkt_put_string(ssh, server_host_key_blob, sbloblen)) != 0 ||
     (r = sshpkt_put_string(ssh, server_pubkey, sizeof(server_pubkey))) != 0 ||
     (r = sshpkt_put_string(ssh, signature, slen)) != 0 ||
     (r = sshpkt_send(ssh)) != 0)
  goto out;

 if ((r = kex_derive_keys(ssh, hash, hashlen, shared_secret)) == 0)
  r = kex_send_newkeys(ssh);
out:
 explicit_bzero(hash, sizeof(hash));
 explicit_bzero(server_key, sizeof(server_key));
 free(server_host_key_blob);
 free(signature);
 free(client_pubkey);
 sshbuf_free(shared_secret);
 return r;
}
