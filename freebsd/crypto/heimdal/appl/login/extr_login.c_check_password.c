
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_passwd; } ;


 int AUTH_KRB5 ;
 int AUTH_OTP ;
 int auth ;
 int crypt (char const*,char*) ;
 scalar_t__ krb5_verify (struct passwd*,char const*) ;
 scalar_t__ otp_verify (struct passwd*,char const*) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int
check_password(struct passwd *pwd, const char *password)
{
    if(pwd->pw_passwd == ((void*)0))
 return 1;
    if(pwd->pw_passwd[0] == '\0'){



 return 1;

    }
    if(strcmp(pwd->pw_passwd, crypt(password, pwd->pw_passwd)) == 0)
 return 0;
    return 1;
}
