
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lzh_stream {TYPE_1__* ds; } ;
struct TYPE_2__ {int pt; int lt; struct TYPE_2__* w_buff; } ;


 int free (TYPE_1__*) ;
 int lzh_huffman_free (int *) ;

__attribute__((used)) static void
lzh_decode_free(struct lzh_stream *strm)
{

 if (strm->ds == ((void*)0))
  return;
 free(strm->ds->w_buff);
 lzh_huffman_free(&(strm->ds->lt));
 lzh_huffman_free(&(strm->ds->pt));
 free(strm->ds);
 strm->ds = ((void*)0);
}
