
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct _citrus_memory_stream {scalar_t__ ms_pos; int ms_region; } ;


 int _citrus_region_peek32 (int *,scalar_t__) ;
 scalar_t__ _citrus_region_size (int *) ;

__attribute__((used)) static __inline int
_citrus_memory_stream_get32(struct _citrus_memory_stream *ms, uint32_t *rval)
{

 if (ms->ms_pos + 4 > _citrus_region_size(&ms->ms_region))
  return (-1);

 *rval = _citrus_region_peek32(&ms->ms_region, ms->ms_pos);
 ms->ms_pos += 4;

 return (0);
}
