
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_memory_stream {scalar_t__ ms_pos; } ;



__attribute__((used)) static __inline void
_citrus_memory_stream_rewind(struct _citrus_memory_stream *ms)
{

 ms->ms_pos = 0;
}
