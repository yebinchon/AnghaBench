
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _citrus_mapper {TYPE_1__* cm_ops; } ;
typedef int _citrus_index_t ;
struct TYPE_2__ {int (* mo_convert ) (struct _citrus_mapper*,int *,int ,void*) ;} ;


 int stub1 (struct _citrus_mapper*,int *,int ,void*) ;

__attribute__((used)) static __inline int
_citrus_mapper_convert(struct _citrus_mapper * __restrict cm,
    _citrus_index_t * __restrict dst, _citrus_index_t src,
    void * __restrict ps)
{

 return ((*cm->cm_ops->mo_convert)(cm, dst, src, ps));
}
