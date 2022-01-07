
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* api_list_ptr; } ;
struct TYPE_3__ {int null_func; int * func_ptr; int * name; } ;


 TYPE_2__ _N_ (int ) ;
 int _ittapi_global ;

__attribute__((used)) static void __itt_nullify_all_pointers(void)
{
    int i;

    for (i = 0; _N_(_ittapi_global).api_list_ptr[i].name != ((void*)0); i++)
        *_N_(_ittapi_global).api_list_ptr[i].func_ptr = _N_(_ittapi_global).api_list_ptr[i].null_func;
}
