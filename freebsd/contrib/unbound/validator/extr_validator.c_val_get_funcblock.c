
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_func_block {int dummy; } ;


 struct module_func_block val_block ;

struct module_func_block*
val_get_funcblock(void)
{
 return &val_block;
}
