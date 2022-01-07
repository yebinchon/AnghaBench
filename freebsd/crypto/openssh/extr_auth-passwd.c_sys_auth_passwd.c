
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* authctxt; } ;
struct passwd {char* pw_passwd; } ;
struct TYPE_2__ {scalar_t__ valid; struct passwd* pw; } ;
typedef TYPE_1__ Authctxt ;


 char* shadow_pw (struct passwd*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* xcrypt (char const*,char*) ;

int
sys_auth_passwd(struct ssh *ssh, const char *password)
{
 Authctxt *authctxt = ssh->authctxt;
 struct passwd *pw = authctxt->pw;
 char *encrypted_password, *salt = ((void*)0);


 char *pw_password = authctxt->valid ? shadow_pw(pw) : pw->pw_passwd;


 if (strcmp(pw_password, "") == 0 && strcmp(password, "") == 0)
  return (1);





 if (authctxt->valid && pw_password[0] && pw_password[1])
  salt = pw_password;
 encrypted_password = xcrypt(password, salt);





 return encrypted_password != ((void*)0) &&
     strcmp(encrypted_password, pw_password) == 0;
}
