
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int inplace_cb_query_func_type ;


 int ecs_whitelist_check ;
 int python_inplace_cb_query_generic ;

int fptr_whitelist_inplace_cb_query(inplace_cb_query_func_type* fptr)
{
 (void)fptr;
 return 0;
}
