
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lzh_stream {int avail_out; size_t total_out; TYPE_1__* ds; int ref_ptr; } ;
struct TYPE_2__ {int w_buff; } ;



__attribute__((used)) static void
lzh_emit_window(struct lzh_stream *strm, size_t s)
{
 strm->ref_ptr = strm->ds->w_buff;
 strm->avail_out = (int)s;
 strm->total_out += s;
}
