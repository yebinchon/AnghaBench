
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int dbm_base ;
 int htobe32 (char const*) ;

int32_t
dbm_addr(const void *p)
{
 return htobe32((const char *)p - dbm_base);
}
