
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct TYPE_3__ {char* user; scalar_t__ valid; } ;
typedef TYPE_1__ Authctxt ;


 struct ssh* active_state ;
 int error (char*,char*,char*,int ,int ) ;
 int packet_disconnect (char*) ;
 int ssh_remote_ipaddr (struct ssh*) ;
 int ssh_remote_port (struct ssh*) ;

void
auth_maxtries_exceeded(Authctxt *authctxt)
{
 struct ssh *ssh = active_state;

 error("maximum authentication attempts exceeded for "
     "%s%.100s from %.200s port %d ssh2",
     authctxt->valid ? "" : "invalid user ",
     authctxt->user,
     ssh_remote_ipaddr(ssh),
     ssh_remote_port(ssh));
 packet_disconnect("Too many authentication failures");

}
