
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_memory_stream {int dummy; } ;


 int EOF ;
 int _bcs_isspace (int) ;
 int _memstream_getc (struct _citrus_memory_stream*) ;
 int _memstream_peek (struct _citrus_memory_stream*) ;

void
_citrus_memory_stream_skip_ws(struct _citrus_memory_stream *ms)
{
 int ch;

 while ((ch = _memstream_peek(ms)) != EOF) {
  if (!_bcs_isspace(ch))
   break;
  _memstream_getc(ms);
 }
}
