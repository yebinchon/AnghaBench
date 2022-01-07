
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int error; } ;


 int * ERR_func_error_string (int ) ;
 int ERR_load_strings_const (TYPE_1__*) ;
 TYPE_1__* EVP_str_functs ;
 TYPE_1__* EVP_str_reasons ;

int ERR_load_EVP_strings(void)
{

    if (ERR_func_error_string(EVP_str_functs[0].error) == ((void*)0)) {
        ERR_load_strings_const(EVP_str_functs);
        ERR_load_strings_const(EVP_str_reasons);
    }

    return 1;
}
