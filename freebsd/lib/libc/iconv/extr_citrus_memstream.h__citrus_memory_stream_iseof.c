
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_memory_stream {scalar_t__ ms_pos; int ms_region; } ;


 scalar_t__ _citrus_region_size (int *) ;

__attribute__((used)) static __inline int
_citrus_memory_stream_iseof(struct _citrus_memory_stream *ms)
{

 return (ms->ms_pos >= _citrus_region_size(&ms->ms_region));
}
