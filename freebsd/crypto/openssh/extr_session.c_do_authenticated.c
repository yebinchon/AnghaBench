
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct TYPE_13__ {int allow_tcp_forwarding; scalar_t__ disable_forwarding; } ;
struct TYPE_12__ {int pw_name; } ;
struct TYPE_11__ {int permit_port_forwarding_flag; } ;
struct TYPE_10__ {int session_info; TYPE_3__* pw; } ;
typedef TYPE_1__ Authctxt ;


 int FORWARD_LOCAL ;
 int FORWARD_REMOTE ;
 int auth_debug_send () ;
 int auth_log_authopts (char*,TYPE_2__*,int ) ;
 TYPE_2__* auth_opts ;
 int channel_disable_admin (struct ssh*,int) ;
 int channel_permit_all (struct ssh*,int) ;
 int do_authenticated2 (struct ssh*,TYPE_1__*) ;
 int do_cleanup (struct ssh*,TYPE_1__*) ;
 TYPE_4__ options ;
 int prepare_auth_info_file (TYPE_3__*,int ) ;
 int set_fwdpermit_from_authopts (struct ssh*,TYPE_2__*) ;
 int setproctitle (char*,int ) ;

void
do_authenticated(struct ssh *ssh, Authctxt *authctxt)
{
 setproctitle("%s", authctxt->pw->pw_name);

 auth_log_authopts("active", auth_opts, 0);



 set_fwdpermit_from_authopts(ssh, auth_opts);

 if (!auth_opts->permit_port_forwarding_flag ||
     options.disable_forwarding) {
  channel_disable_admin(ssh, FORWARD_LOCAL);
  channel_disable_admin(ssh, FORWARD_REMOTE);
 } else {
  if ((options.allow_tcp_forwarding & FORWARD_LOCAL) == 0)
   channel_disable_admin(ssh, FORWARD_LOCAL);
  else
   channel_permit_all(ssh, FORWARD_LOCAL);
  if ((options.allow_tcp_forwarding & FORWARD_REMOTE) == 0)
   channel_disable_admin(ssh, FORWARD_REMOTE);
  else
   channel_permit_all(ssh, FORWARD_REMOTE);
 }
 auth_debug_send();

 prepare_auth_info_file(authctxt->pw, authctxt->session_info);

 do_authenticated2(ssh, authctxt);

 do_cleanup(ssh, authctxt);
}
