
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_memory_stream {scalar_t__ ms_pos; } ;


 int EOF ;

__attribute__((used)) static __inline void
_citrus_memory_stream_ungetc(struct _citrus_memory_stream *ms, int ch)
{

 if (ch != EOF && ms->ms_pos > 0)
  ms->ms_pos--;
}
