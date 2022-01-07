
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 scalar_t__ dbm_base ;

int32_t *
dbm_getint(int32_t offset)
{
 return (int32_t *)dbm_base + offset;
}
