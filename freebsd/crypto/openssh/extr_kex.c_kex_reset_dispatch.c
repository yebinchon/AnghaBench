
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;


 int SSH2_MSG_TRANSPORT_MAX ;
 int SSH2_MSG_TRANSPORT_MIN ;
 int kex_protocol_error ;
 int ssh_dispatch_range (struct ssh*,int ,int ,int *) ;

__attribute__((used)) static void
kex_reset_dispatch(struct ssh *ssh)
{
 ssh_dispatch_range(ssh, SSH2_MSG_TRANSPORT_MIN,
     SSH2_MSG_TRANSPORT_MAX, &kex_protocol_error);
}
