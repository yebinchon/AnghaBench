
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __collate_load_tables_l (char const*,int *) ;
 int __xlocale_global_collate ;

int
__collate_load_tables(const char *encoding)
{

 return (__collate_load_tables_l(encoding, &__xlocale_global_collate));
}
