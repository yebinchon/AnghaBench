
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lzx_stream {struct lzx_dec* ds; } ;
struct TYPE_2__ {int len_size; size_t* bitlen; int * freq; } ;
struct lzx_br {int dummy; } ;
struct lzx_dec {int loop; TYPE_1__ pt; struct lzx_br br; } ;


 size_t lzx_br_bits (struct lzx_br*,int) ;
 int lzx_br_consume (struct lzx_br*,int) ;
 int lzx_br_read_ahead (struct lzx_stream*,struct lzx_br*,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int
lzx_read_pre_tree(struct lzx_stream *strm)
{
 struct lzx_dec *ds = strm->ds;
 struct lzx_br *br = &(ds->br);
 int i;

 if (ds->loop == 0)
  memset(ds->pt.freq, 0, sizeof(ds->pt.freq));
 for (i = ds->loop; i < ds->pt.len_size; i++) {
  if (!lzx_br_read_ahead(strm, br, 4)) {
   ds->loop = i;
   return (0);
  }
  ds->pt.bitlen[i] = lzx_br_bits(br, 4);
  ds->pt.freq[ds->pt.bitlen[i]]++;
  lzx_br_consume(br, 4);
 }
 ds->loop = i;
 return (1);
}
