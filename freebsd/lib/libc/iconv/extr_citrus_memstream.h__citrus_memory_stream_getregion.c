
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_region {int dummy; } ;
struct _citrus_memory_stream {scalar_t__ ms_pos; int ms_region; } ;


 int _citrus_region_init (struct _citrus_region*,void*,size_t) ;
 void* _citrus_region_offset (int *,scalar_t__) ;
 scalar_t__ _citrus_region_size (int *) ;

__attribute__((used)) static __inline void *
_citrus_memory_stream_getregion(struct _citrus_memory_stream *ms,
    struct _citrus_region *r, size_t sz)
{
 void *ret;

 if (ms->ms_pos + sz > _citrus_region_size(&ms->ms_region))
  return (((void*)0));

 ret = _citrus_region_offset(&ms->ms_region, ms->ms_pos);
 ms->ms_pos += sz;
 if (r)
  _citrus_region_init(r, ret, sz);

 return (ret);
}
