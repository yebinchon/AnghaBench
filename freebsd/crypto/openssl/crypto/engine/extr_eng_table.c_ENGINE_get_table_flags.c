
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int table_flags ;

unsigned int ENGINE_get_table_flags(void)
{
    return table_flags;
}
