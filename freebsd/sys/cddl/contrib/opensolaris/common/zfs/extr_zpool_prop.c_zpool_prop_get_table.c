
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zprop_desc_t ;


 int * zpool_prop_table ;

zprop_desc_t *
zpool_prop_get_table(void)
{
 return (zpool_prop_table);
}
