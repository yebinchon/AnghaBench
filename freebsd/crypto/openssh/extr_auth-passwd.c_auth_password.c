
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ssh {TYPE_1__* authctxt; } ;
struct passwd {scalar_t__ pw_uid; } ;
struct TYPE_7__ {scalar_t__ permit_root_login; scalar_t__ permit_empty_passwd; int kerberos_authentication; scalar_t__ use_pam; } ;
struct TYPE_6__ {int valid; int force_pwchange; struct passwd* pw; } ;
typedef scalar_t__ HANDLE ;
typedef TYPE_1__ Authctxt ;


 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ MAX_PASSWORD_LEN ;
 scalar_t__ PERMIT_YES ;
 int auth_krb5_password (TYPE_1__*,char const*) ;
 int auth_restrict_session (struct ssh*) ;
 scalar_t__ auth_shadow_pwexpired (TYPE_1__*) ;
 scalar_t__ cygwin_logon_user (struct passwd*,char const*) ;
 int cygwin_set_impersonation_token (scalar_t__) ;
 TYPE_3__ options ;
 scalar_t__ sshpam_auth_passwd (TYPE_1__*,char const*) ;
 scalar_t__ strlen (char const*) ;
 int sys_auth_passwd (struct ssh*,char const*) ;

int
auth_password(struct ssh *ssh, const char *password)
{
 Authctxt *authctxt = ssh->authctxt;
 struct passwd *pw = authctxt->pw;
 int result, ok = authctxt->valid;




 if (strlen(password) > MAX_PASSWORD_LEN)
  return 0;


 if (pw->pw_uid == 0 && options.permit_root_login != PERMIT_YES)
  ok = 0;

 if (*password == '\0' && options.permit_empty_passwd == 0)
  return 0;
 result = sys_auth_passwd(ssh, password);
 if (authctxt->force_pwchange)
  auth_restrict_session(ssh);
 return (result && ok);
}
