
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int uint64_t ;
typedef int nvpair_t ;


 int NV_TYPE_NUMBER ;
 int * nvpair_allocv (char const*,int ,int ,int,int ) ;

nvpair_t *
nvpair_create_number(const char *name, uint64_t value)
{

 return (nvpair_allocv(name, NV_TYPE_NUMBER, value, sizeof(value), 0));
}
