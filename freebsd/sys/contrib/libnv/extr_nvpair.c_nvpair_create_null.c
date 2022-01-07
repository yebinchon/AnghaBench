
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;


 int NV_TYPE_NULL ;
 int * nvpair_allocv (char const*,int ,int ,int ,int ) ;

nvpair_t *
nvpair_create_null(const char *name)
{

 return (nvpair_allocv(name, NV_TYPE_NULL, 0, 0, 0));
}
