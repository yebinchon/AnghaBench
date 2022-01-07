
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_mapper_std {int (* ms_convert ) (struct _citrus_mapper_std*,int *,int ,void*) ;} ;
struct _citrus_mapper {struct _citrus_mapper_std* cm_closure; } ;
typedef int _index_t ;


 int stub1 (struct _citrus_mapper_std*,int *,int ,void*) ;

__attribute__((used)) static int

_citrus_mapper_std_mapper_convert(struct _citrus_mapper * __restrict cm,
    _index_t * __restrict dst, _index_t src, void * __restrict ps)
{
 struct _citrus_mapper_std *ms;

 ms = cm->cm_closure;
 return ((*ms->ms_convert)(ms, dst, src, ps));
}
