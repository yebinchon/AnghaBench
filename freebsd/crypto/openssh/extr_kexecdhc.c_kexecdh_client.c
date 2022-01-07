
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {struct kex* kex; } ;
struct kex {int const* ec_group; int * ec_client_key; int ec_nid; } ;
typedef int EC_POINT ;
typedef int EC_KEY ;
typedef int EC_GROUP ;


 int EC_KEY_free (int *) ;
 int EC_KEY_generate_key (int *) ;
 int * EC_KEY_get0_group (int *) ;
 int * EC_KEY_get0_public_key (int *) ;
 int * EC_KEY_new_by_curve_name (int ) ;
 int SSH2_MSG_KEX_ECDH_INIT ;
 int SSH2_MSG_KEX_ECDH_REPLY ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 int debug (char*) ;
 int fputs (char*,int ) ;
 int input_kex_ecdh_reply ;
 int ssh_dispatch_set (struct ssh*,int ,int *) ;
 int sshkey_dump_ec_key (int *) ;
 int sshpkt_put_ec (struct ssh*,int const*,int const*) ;
 int sshpkt_send (struct ssh*) ;
 int sshpkt_start (struct ssh*,int ) ;
 int stderr ;

int
kexecdh_client(struct ssh *ssh)
{
 struct kex *kex = ssh->kex;
 EC_KEY *client_key = ((void*)0);
 const EC_GROUP *group;
 const EC_POINT *public_key;
 int r;

 if ((client_key = EC_KEY_new_by_curve_name(kex->ec_nid)) == ((void*)0)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 if (EC_KEY_generate_key(client_key) != 1) {
  r = SSH_ERR_LIBCRYPTO_ERROR;
  goto out;
 }
 group = EC_KEY_get0_group(client_key);
 public_key = EC_KEY_get0_public_key(client_key);

 if ((r = sshpkt_start(ssh, SSH2_MSG_KEX_ECDH_INIT)) != 0 ||
     (r = sshpkt_put_ec(ssh, public_key, group)) != 0 ||
     (r = sshpkt_send(ssh)) != 0)
  goto out;
 debug("sending SSH2_MSG_KEX_ECDH_INIT");





 kex->ec_client_key = client_key;
 kex->ec_group = group;
 client_key = ((void*)0);

 debug("expecting SSH2_MSG_KEX_ECDH_REPLY");
 ssh_dispatch_set(ssh, SSH2_MSG_KEX_ECDH_REPLY, &input_kex_ecdh_reply);
 r = 0;
 out:
 EC_KEY_free(client_key);
 return r;
}
