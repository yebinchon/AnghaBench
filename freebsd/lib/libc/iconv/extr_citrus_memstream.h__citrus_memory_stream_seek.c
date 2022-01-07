
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_memory_stream {size_t ms_pos; int ms_region; } ;
typedef size_t ssize_t ;





 size_t _citrus_region_size (int *) ;

__attribute__((used)) static __inline int
_citrus_memory_stream_seek(struct _citrus_memory_stream *ms, size_t pos, int w)
{
 size_t sz;

 sz = _citrus_region_size(&ms->ms_region);

 switch (w) {
 case 128:
  if (pos >= sz)
   return (-1);
  ms->ms_pos = pos;
  break;
 case 130:
  pos += (ssize_t)ms->ms_pos;
  if (pos >= sz)
   return (-1);
  ms->ms_pos = pos;
  break;
 case 129:
  if (sz < pos)
   return (-1);
  ms->ms_pos = sz - pos;
  break;
 }
 return (0);
}
