
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_memory_stream {size_t ms_pos; } ;



__attribute__((used)) static __inline size_t
_citrus_memory_stream_tell(struct _citrus_memory_stream *ms)
{

 return (ms->ms_pos);
}
