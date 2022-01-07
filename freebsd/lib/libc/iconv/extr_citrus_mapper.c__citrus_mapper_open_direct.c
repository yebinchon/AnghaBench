
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_mapper_area {int dummy; } ;
struct _citrus_mapper {int dummy; } ;


 int mapper_open (struct _citrus_mapper_area*,struct _citrus_mapper**,char const*,char const*) ;

int
_citrus_mapper_open_direct(struct _citrus_mapper_area *__restrict ma,
    struct _citrus_mapper * __restrict * __restrict rcm,
    const char * __restrict module, const char * __restrict variable)
{

 return (mapper_open(ma, rcm, module, variable));
}
