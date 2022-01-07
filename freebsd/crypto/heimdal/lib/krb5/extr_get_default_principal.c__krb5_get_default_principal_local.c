
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct passwd {char* pw_name; } ;
typedef int * krb5_principal ;
typedef int krb5_error_code ;
typedef int krb5_context ;


 int ENOTTY ;
 int N_ (char*,char*) ;
 char* get_env_user () ;
 char* getlogin () ;
 struct passwd* getpwuid (scalar_t__) ;
 scalar_t__ getuid () ;
 int krb5_make_principal (int ,int **,int *,char const*,char*,...) ;
 int krb5_set_error_message (int ,int ,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

krb5_error_code
_krb5_get_default_principal_local (krb5_context context,
       krb5_principal *princ)
{
    krb5_error_code ret;
    const char *user;
    uid_t uid;

    *princ = ((void*)0);

    uid = getuid();
    if(uid == 0) {
 user = getlogin();
 if(user == ((void*)0))
     user = get_env_user();
 if(user != ((void*)0) && strcmp(user, "root") != 0)
     ret = krb5_make_principal(context, princ, ((void*)0), user, "root", ((void*)0));
 else
     ret = krb5_make_principal(context, princ, ((void*)0), "root", ((void*)0));
    } else {
 struct passwd *pw = getpwuid(uid);
 if(pw != ((void*)0))
     user = pw->pw_name;
 else {
     user = get_env_user();
     if(user == ((void*)0))
  user = getlogin();
 }
 if(user == ((void*)0)) {
     krb5_set_error_message(context, ENOTTY,
       N_("unable to figure out current "
          "principal", ""));
     return ENOTTY;
 }
 ret = krb5_make_principal(context, princ, ((void*)0), user, ((void*)0));
    }
    return ret;
}
