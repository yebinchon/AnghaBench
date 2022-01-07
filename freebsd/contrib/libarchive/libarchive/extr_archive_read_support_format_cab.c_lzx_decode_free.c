
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lzx_stream {TYPE_1__* ds; } ;
struct TYPE_2__ {int lt; int mt; int pt; int at; struct TYPE_2__* pos_tbl; struct TYPE_2__* w_buff; } ;


 int free (TYPE_1__*) ;
 int lzx_huffman_free (int *) ;

__attribute__((used)) static void
lzx_decode_free(struct lzx_stream *strm)
{

 if (strm->ds == ((void*)0))
  return;
 free(strm->ds->w_buff);
 free(strm->ds->pos_tbl);
 lzx_huffman_free(&(strm->ds->at));
 lzx_huffman_free(&(strm->ds->pt));
 lzx_huffman_free(&(strm->ds->mt));
 lzx_huffman_free(&(strm->ds->lt));
 free(strm->ds);
 strm->ds = ((void*)0);
}
