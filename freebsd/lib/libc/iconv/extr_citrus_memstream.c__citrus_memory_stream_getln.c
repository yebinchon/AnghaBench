
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct _citrus_memory_stream {scalar_t__ ms_pos; int ms_region; } ;


 scalar_t__ _bcs_iseol (int const) ;
 scalar_t__ _region_offset (int *,scalar_t__) ;
 scalar_t__ _region_size (int *) ;

const char *
_citrus_memory_stream_getln(struct _citrus_memory_stream * __restrict ms,
    size_t * __restrict rlen)
{
 const uint8_t *h, *p;
 size_t i, ret;

 if (ms->ms_pos>=_region_size(&ms->ms_region))
  return (((void*)0));

 h = p = (uint8_t *)_region_offset(&ms->ms_region, ms->ms_pos);
 ret = 0;
 for (i = _region_size(&ms->ms_region) - ms->ms_pos; i > 0; i--) {
  ret++;
  if (_bcs_iseol(*p))
   break;
  p++;
 }

 ms->ms_pos += ret;
 *rlen = ret;
 return ((const char *)h);
}
