
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int nvpair_t ;


 int NV_TYPE_BOOL ;
 int * nvpair_allocv (char const*,int ,int,int,int ) ;

nvpair_t *
nvpair_create_bool(const char *name, bool value)
{

 return (nvpair_allocv(name, NV_TYPE_BOOL, value ? 1 : 0,
     sizeof(uint8_t), 0));
}
