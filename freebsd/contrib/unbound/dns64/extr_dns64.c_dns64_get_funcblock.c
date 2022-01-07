
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_func_block {int dummy; } ;


 struct module_func_block dns64_block ;

struct module_func_block *
dns64_get_funcblock(void)
{
 return &dns64_block;
}
