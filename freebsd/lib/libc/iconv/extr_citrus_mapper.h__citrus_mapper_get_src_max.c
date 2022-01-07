
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _citrus_mapper {TYPE_1__* cm_traits; } ;
struct TYPE_2__ {size_t mt_src_max; } ;



__attribute__((used)) static __inline size_t
_citrus_mapper_get_src_max(struct _citrus_mapper * __restrict cm)
{

 return (cm->cm_traits->mt_src_max);
}
