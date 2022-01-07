
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {struct kex* kex; } ;
struct kex {int c25519_client_pubkey; int c25519_client_key; } ;


 int SSH2_MSG_KEX_ECDH_INIT ;
 int SSH2_MSG_KEX_ECDH_REPLY ;
 int debug (char*) ;
 int dump_digest (char*,int ,int) ;
 int input_kex_c25519_reply ;
 int kexc25519_keygen (int ,int ) ;
 int ssh_dispatch_set (struct ssh*,int ,int *) ;
 int sshpkt_put_string (struct ssh*,int ,int) ;
 int sshpkt_send (struct ssh*) ;
 int sshpkt_start (struct ssh*,int ) ;

int
kexc25519_client(struct ssh *ssh)
{
 struct kex *kex = ssh->kex;
 int r;

 kexc25519_keygen(kex->c25519_client_key, kex->c25519_client_pubkey);




 if ((r = sshpkt_start(ssh, SSH2_MSG_KEX_ECDH_INIT)) != 0 ||
     (r = sshpkt_put_string(ssh, kex->c25519_client_pubkey,
     sizeof(kex->c25519_client_pubkey))) != 0 ||
     (r = sshpkt_send(ssh)) != 0)
  return r;

 debug("expecting SSH2_MSG_KEX_ECDH_REPLY");
 ssh_dispatch_set(ssh, SSH2_MSG_KEX_ECDH_REPLY, &input_kex_c25519_reply);
 return 0;
}
