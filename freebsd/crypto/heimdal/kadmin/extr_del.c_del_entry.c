
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_error_code ;


 int do_del_entry ;
 scalar_t__ foreach_principal (char*,int ,char*,int *) ;

int
del_entry(void *opt, int argc, char **argv)
{
    int i;
    krb5_error_code ret = 0;

    for(i = 0; i < argc; i++) {
 ret = foreach_principal(argv[i], do_del_entry, "del", ((void*)0));
 if (ret)
     break;
    }
    return ret != 0;
}
