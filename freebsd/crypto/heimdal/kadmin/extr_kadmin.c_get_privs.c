
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int str ;
typedef scalar_t__ kadm5_ret_t ;


 scalar_t__ _kadm5_privs_to_string (scalar_t__,char*,int) ;
 int context ;
 scalar_t__ kadm5_get_privs (int ,scalar_t__*) ;
 int kadm_handle ;
 int krb5_warn (int ,scalar_t__,char*) ;
 int printf (char*,...) ;

int
get_privs(void *opt, int argc, char **argv)
{
    uint32_t privs;
    char str[128];
    kadm5_ret_t ret;

    ret = kadm5_get_privs(kadm_handle, &privs);
    if(ret)
 krb5_warn(context, ret, "kadm5_get_privs");
    else{
 ret =_kadm5_privs_to_string(privs, str, sizeof(str));
 if (ret == 0)
     printf("%s\n", str);
 else
     printf("privs: 0x%x\n", (unsigned int)privs);
    }
    return 0;
}
