
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;


 int SSH2_MSG_KEX_DH_GEX_REQUEST ;
 int debug (char*) ;
 int input_kex_dh_gex_request ;
 int ssh_dispatch_set (struct ssh*,int ,int *) ;

int
kexgex_server(struct ssh *ssh)
{
 ssh_dispatch_set(ssh, SSH2_MSG_KEX_DH_GEX_REQUEST,
     &input_kex_dh_gex_request);
 debug("expecting SSH2_MSG_KEX_DH_GEX_REQUEST");
 return 0;
}
