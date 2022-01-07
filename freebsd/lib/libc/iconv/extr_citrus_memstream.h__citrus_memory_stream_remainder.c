
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_memory_stream {size_t ms_pos; int ms_region; } ;


 size_t _citrus_region_size (int *) ;

__attribute__((used)) static __inline size_t
_citrus_memory_stream_remainder(struct _citrus_memory_stream *ms)
{
 size_t sz;

 sz = _citrus_region_size(&ms->ms_region);
 if (ms->ms_pos>sz)
  return (0);
 return (sz-ms->ms_pos);
}
