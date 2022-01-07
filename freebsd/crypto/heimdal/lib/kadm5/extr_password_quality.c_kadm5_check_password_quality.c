
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kadm5_pw_policy_check_func {int (* func ) (int ,int ,int *,int *,char*,int) ;int name; } ;
typedef int krb5_principal ;
typedef int krb5_data ;
typedef int krb5_context ;
typedef int error_msg ;


 struct kadm5_pw_policy_check_func* find_func (int ,char*) ;
 int krb5_config_free_strings (char**) ;
 char** krb5_config_get_strings (int ,int *,char*,char*,int *) ;
 int krb5_set_error_message (int ,int ,char*,char const*,...) ;
 char* min_length_passwd_quality_v0 (int ,int ,int *) ;
 char* passwd_quality_check (int ,int ,int *) ;
 char* stub1 (int ,int ,int *) ;
 int stub2 (int ,int ,int *,int *,char*,int) ;
 char* stub3 (int ,int ,int *) ;

const char *
kadm5_check_password_quality (krb5_context context,
         krb5_principal principal,
         krb5_data *pwd_data)
{
    const struct kadm5_pw_policy_check_func *proc;
    static char error_msg[1024];
    const char *msg;
    char **v, **vp;
    int ret;





    v = krb5_config_get_strings(context, ((void*)0),
    "password_quality",
    "policies",
    ((void*)0));
    if (v == ((void*)0)) {
 msg = (*passwd_quality_check) (context, principal, pwd_data);
 if (msg)
     krb5_set_error_message(context, 0, "password policy failed: %s", msg);
 return msg;
    }

    error_msg[0] = '\0';

    msg = ((void*)0);
    for(vp = v; *vp; vp++) {
 proc = find_func(context, *vp);
 if (proc == ((void*)0)) {
     msg = "failed to find password verifier function";
     krb5_set_error_message(context, 0, "Failed to find password policy "
       "function: %s", *vp);
     break;
 }
 ret = (proc->func)(context, principal, pwd_data, ((void*)0),
      error_msg, sizeof(error_msg));
 if (ret) {
     krb5_set_error_message(context, 0, "Password policy "
       "%s failed with %s",
       proc->name, error_msg);
     msg = error_msg;
     break;
 }
    }
    krb5_config_free_strings(v);



    if (msg == ((void*)0) && passwd_quality_check != min_length_passwd_quality_v0) {
 msg = (*passwd_quality_check) (context, principal, pwd_data);
 if (msg)
     krb5_set_error_message(context, 0, "(old) password policy "
       "failed with %s", msg);

    }
    return msg;
}
