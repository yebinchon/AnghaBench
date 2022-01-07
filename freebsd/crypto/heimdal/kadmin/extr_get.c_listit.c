
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_error_code ;


 int do_list_entry ;
 scalar_t__ foreach_principal (char*,int ,char const*,int *) ;

__attribute__((used)) static int
listit(const char *funcname, int argc, char **argv)
{
    int i;
    krb5_error_code ret, saved_ret = 0;

    for (i = 0; i < argc; i++) {
 ret = foreach_principal(argv[i], do_list_entry, funcname, ((void*)0));
        if (saved_ret == 0 && ret != 0)
            saved_ret = ret;
    }
    return saved_ret != 0;
}
