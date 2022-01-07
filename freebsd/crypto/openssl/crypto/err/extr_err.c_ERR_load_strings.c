
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ERR_STRING_DATA ;


 scalar_t__ ERR_load_ERR_strings () ;
 int err_load_strings (int *) ;
 int err_patch (int,int *) ;

int ERR_load_strings(int lib, ERR_STRING_DATA *str)
{
    if (ERR_load_ERR_strings() == 0)
        return 0;

    err_patch(lib, str);
    err_load_strings(str);
    return 1;
}
