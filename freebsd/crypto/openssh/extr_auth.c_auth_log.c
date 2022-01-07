
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct TYPE_6__ {int max_authtries; int use_dns; } ;
struct TYPE_5__ {int failures; scalar_t__ postponed; int user; scalar_t__ valid; int * auth_method_info; } ;
typedef TYPE_1__ Authctxt ;


 int BLACKLIST_AUTH_OK ;
 int BLACKLIST_NOTIFY (int ,char*) ;
 struct ssh* active_state ;
 int audit_classify_auth (char const*) ;
 int audit_event (int ) ;
 int auth_get_canonical_hostname (struct ssh*,int ) ;
 char* format_method_key (TYPE_1__*) ;
 int free (char*) ;
 int loginmsg ;
 void logit (char const*) ;
 int mm_is_monitor () ;
 TYPE_2__ options ;
 int record_failed_login (int ,int ,char*) ;
 int ssh_remote_ipaddr (struct ssh*) ;
 int ssh_remote_port (struct ssh*) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int sys_auth_record_login (int ,int ,char*,int *) ;
 scalar_t__ use_privsep ;
 void verbose (char const*) ;
 char* xstrdup (int *) ;

void
auth_log(Authctxt *authctxt, int authenticated, int partial,
    const char *method, const char *submethod)
{
 struct ssh *ssh = active_state;
 void (*authlog) (const char *fmt,...) = verbose;
 const char *authmsg;
 char *extra = ((void*)0);

 if (use_privsep && !mm_is_monitor() && !authctxt->postponed)
  return;


 if (authenticated == 1 ||
     !authctxt->valid ||
     authctxt->failures >= options.max_authtries / 2 ||
     strcmp(method, "password") == 0)
  authlog = logit;

 if (authctxt->postponed)
  authmsg = "Postponed";
 else if (partial)
  authmsg = "Partial";
 else {
  authmsg = authenticated ? "Accepted" : "Failed";
  if (authenticated)
   BLACKLIST_NOTIFY(BLACKLIST_AUTH_OK, "ssh");
 }

 if ((extra = format_method_key(authctxt)) == ((void*)0)) {
  if (authctxt->auth_method_info != ((void*)0))
   extra = xstrdup(authctxt->auth_method_info);
 }

 authlog("%s %s%s%s for %s%.100s from %.200s port %d ssh2%s%s",
     authmsg,
     method,
     submethod != ((void*)0) ? "/" : "", submethod == ((void*)0) ? "" : submethod,
     authctxt->valid ? "" : "invalid user ",
     authctxt->user,
     ssh_remote_ipaddr(ssh),
     ssh_remote_port(ssh),
     extra != ((void*)0) ? ": " : "",
     extra != ((void*)0) ? extra : "");

 free(extra);
}
