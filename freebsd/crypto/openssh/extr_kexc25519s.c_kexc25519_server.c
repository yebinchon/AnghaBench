
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;


 int SSH2_MSG_KEX_ECDH_INIT ;
 int debug (char*) ;
 int input_kex_c25519_init ;
 int ssh_dispatch_set (struct ssh*,int ,int *) ;

int
kexc25519_server(struct ssh *ssh)
{
 debug("expecting SSH2_MSG_KEX_ECDH_INIT");
 ssh_dispatch_set(ssh, SSH2_MSG_KEX_ECDH_INIT, &input_kex_c25519_init);
 return 0;
}
