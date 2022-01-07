
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* kex; } ;
struct TYPE_2__ {scalar_t__ ext_info_c; } ;


 int SSH2_MSG_NEWKEYS ;
 int debug (char*) ;
 int kex_input_newkeys ;
 int kex_reset_dispatch (struct ssh*) ;
 int kex_send_ext_info (struct ssh*) ;
 int ssh_dispatch_set (struct ssh*,int ,int *) ;
 int sshpkt_send (struct ssh*) ;
 int sshpkt_start (struct ssh*,int ) ;

int
kex_send_newkeys(struct ssh *ssh)
{
 int r;

 kex_reset_dispatch(ssh);
 if ((r = sshpkt_start(ssh, SSH2_MSG_NEWKEYS)) != 0 ||
     (r = sshpkt_send(ssh)) != 0)
  return r;
 debug("SSH2_MSG_NEWKEYS sent");
 debug("expecting SSH2_MSG_NEWKEYS");
 ssh_dispatch_set(ssh, SSH2_MSG_NEWKEYS, &kex_input_newkeys);
 if (ssh->kex->ext_info_c)
  if ((r = kex_send_ext_info(ssh)) != 0)
   return r;
 return 0;
}
