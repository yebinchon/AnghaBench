
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_memory_stream {int ms_pos; int ms_region; } ;


 int EOF ;
 scalar_t__ _citrus_memory_stream_iseof (struct _citrus_memory_stream*) ;
 int _citrus_region_peek8 (int *,int ) ;

__attribute__((used)) static __inline int
_citrus_memory_stream_peek(struct _citrus_memory_stream *ms)
{

 if (_citrus_memory_stream_iseof(ms))
  return (EOF);
 return (_citrus_region_peek8(&ms->ms_region, ms->ms_pos));
}
