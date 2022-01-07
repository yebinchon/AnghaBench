
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;
typedef scalar_t__ kadm5_passwd_quality_check_func_v0 ;


 int KADM5_PASSWD_VERSION_V0 ;
 int RTLD_NOW ;
 int dlclose (void*) ;
 void* dlopen (char const*,int ) ;
 void* dlsym (void*,char const*) ;
 char* krb5_config_get_string (int ,int *,char*,char*,int *) ;
 int krb5_warnx (int ,char*,...) ;
 scalar_t__ passwd_quality_check ;

void
kadm5_setup_passwd_quality_check(krb5_context context,
     const char *check_library,
     const char *check_function)
{
}
