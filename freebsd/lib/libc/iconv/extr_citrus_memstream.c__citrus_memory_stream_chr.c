
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_region {int dummy; } ;
struct _citrus_memory_stream {scalar_t__ ms_pos; int ms_region; } ;


 size_t _memstream_remainder (struct _citrus_memory_stream*) ;
 int _region_init (struct _citrus_region*,void*,size_t) ;
 void* _region_offset (int *,scalar_t__) ;
 scalar_t__ _region_size (int *) ;
 void* memchr (void*,char,size_t) ;

void *
_citrus_memory_stream_chr(struct _citrus_memory_stream *ms,
    struct _citrus_region *r, char ch)
{
 void *chr, *head;
 size_t sz;

 if (ms->ms_pos >= _region_size(&ms->ms_region))
  return (((void*)0));

 head = _region_offset(&ms->ms_region, ms->ms_pos);
 chr = memchr(head, ch, _memstream_remainder(ms));
 if (chr == ((void*)0)) {
  _region_init(r, head, _memstream_remainder(ms));
  ms->ms_pos = _region_size(&ms->ms_region);
  return (((void*)0));
 }
 sz = (char *)chr - (char *)head;

 _region_init(r, head, sz);
 ms->ms_pos += sz + 1;

 return (chr);
}
