
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modify_options {int dummy; } ;
typedef scalar_t__ krb5_error_code ;


 int do_mod_entry ;
 scalar_t__ foreach_principal (char*,int ,char*,struct modify_options*) ;

int
mod_entry(struct modify_options *opt, int argc, char **argv)
{
    krb5_error_code ret = 0;
    int i;

    for(i = 0; i < argc; i++) {
 ret = foreach_principal(argv[i], do_mod_entry, "mod", opt);
 if (ret)
     break;
    }
    return ret != 0;
}
