
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sshauthopt {size_t nenv; size_t npermitopen; size_t npermitlisten; int force_tun_device; char* force_command; scalar_t__ valid_before; char* cert_principals; char** env; char** permitopen; char** permitlisten; scalar_t__ permit_port_forwarding_flag; scalar_t__ permit_agent_forwarding_flag; scalar_t__ permit_x11_forwarding_flag; scalar_t__ permit_user_rc; scalar_t__ permit_pty_flag; } ;
typedef int msg ;
typedef int buf ;
struct TYPE_2__ {int allow_tcp_forwarding; scalar_t__ permit_user_env; } ;


 int FORWARD_LOCAL ;
 int FORWARD_REMOTE ;
 int auth_debug_add (char*,char const*,char*) ;
 int debug (char*,char const*,char*) ;
 int format_absolute_time (scalar_t__,char*,int) ;
 TYPE_1__ options ;
 int snprintf (char*,int,char*,...) ;

void
auth_log_authopts(const char *loc, const struct sshauthopt *opts, int do_remote)
{
 int do_env = options.permit_user_env && opts->nenv > 0;
 int do_permitopen = opts->npermitopen > 0 &&
     (options.allow_tcp_forwarding & FORWARD_LOCAL) != 0;
 int do_permitlisten = opts->npermitlisten > 0 &&
     (options.allow_tcp_forwarding & FORWARD_REMOTE) != 0;
 size_t i;
 char msg[1024], buf[64];

 snprintf(buf, sizeof(buf), "%d", opts->force_tun_device);

 snprintf(msg, sizeof(msg), "key options:%s%s%s%s%s%s%s%s%s%s%s%s%s",
     opts->permit_agent_forwarding_flag ? " agent-forwarding" : "",
     opts->force_command == ((void*)0) ? "" : " command",
     do_env ? " environment" : "",
     opts->valid_before == 0 ? "" : "expires",
     do_permitopen ? " permitopen" : "",
     do_permitlisten ? " permitlisten" : "",
     opts->permit_port_forwarding_flag ? " port-forwarding" : "",
     opts->cert_principals == ((void*)0) ? "" : " principals",
     opts->permit_pty_flag ? " pty" : "",
     opts->force_tun_device == -1 ? "" : " tun=",
     opts->force_tun_device == -1 ? "" : buf,
     opts->permit_user_rc ? " user-rc" : "",
     opts->permit_x11_forwarding_flag ? " x11-forwarding" : "");

 debug("%s: %s", loc, msg);
 if (do_remote)
  auth_debug_add("%s: %s", loc, msg);

 if (options.permit_user_env) {
  for (i = 0; i < opts->nenv; i++) {
   debug("%s: environment: %s", loc, opts->env[i]);
   if (do_remote) {
    auth_debug_add("%s: environment: %s",
        loc, opts->env[i]);
   }
  }
 }


 if (opts->valid_before != 0) {
  format_absolute_time(opts->valid_before, buf, sizeof(buf));
  debug("%s: expires at %s", loc, buf);
 }
 if (opts->cert_principals != ((void*)0)) {
  debug("%s: authorized principals: \"%s\"",
      loc, opts->cert_principals);
 }
 if (opts->force_command != ((void*)0))
  debug("%s: forced command: \"%s\"", loc, opts->force_command);
 if (do_permitopen) {
  for (i = 0; i < opts->npermitopen; i++) {
   debug("%s: permitted open: %s",
       loc, opts->permitopen[i]);
  }
 }
 if (do_permitlisten) {
  for (i = 0; i < opts->npermitlisten; i++) {
   debug("%s: permitted listen: %s",
       loc, opts->permitlisten[i]);
  }
 }
}
