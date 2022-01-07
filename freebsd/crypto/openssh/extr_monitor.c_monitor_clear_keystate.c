
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;
struct monitor {int dummy; } ;


 int MODE_IN ;
 int MODE_OUT ;
 struct ssh* active_state ;
 int * child_state ;
 int ssh_clear_newkeys (struct ssh*,int ) ;
 int sshbuf_free (int *) ;

void
monitor_clear_keystate(struct monitor *pmonitor)
{
 struct ssh *ssh = active_state;

 ssh_clear_newkeys(ssh, MODE_IN);
 ssh_clear_newkeys(ssh, MODE_OUT);
 sshbuf_free(child_state);
 child_state = ((void*)0);
}
