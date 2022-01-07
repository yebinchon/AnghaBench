
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_func_block {int dummy; } ;


 struct module_func_block iter_block ;

struct module_func_block*
iter_get_funcblock(void)
{
 return &iter_block;
}
