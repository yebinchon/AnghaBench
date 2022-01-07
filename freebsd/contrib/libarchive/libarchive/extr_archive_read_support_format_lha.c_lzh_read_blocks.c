
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct lzh_stream {struct lzh_dec* ds; } ;
struct TYPE_4__ {int len_size; int len_bits; int len_avail; int* freq; int* bitlen; int max_bits; } ;
struct lzh_br {int dummy; } ;
struct lzh_dec {int state; int literal_pt_len_size; int literal_pt_len_bits; int reading_position; int loop; int pos_pt_len_size; int pos_pt_len_bits; int error; TYPE_1__ pt; TYPE_1__ lt; void* blocks_avail; int w_pos; struct lzh_br br; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_OK ;
 void* lzh_br_bits (struct lzh_br*,int) ;
 int lzh_br_consume (struct lzh_br*,int) ;
 int lzh_br_has (struct lzh_br*,int) ;
 int lzh_br_read_ahead (struct lzh_stream*,struct lzh_br*,int) ;
 int lzh_br_read_ahead_0 (struct lzh_stream*,struct lzh_br*,int) ;
 int lzh_decode_huffman (TYPE_1__*,unsigned int) ;
 int lzh_emit_window (struct lzh_stream*,int ) ;
 int lzh_make_fake_table (TYPE_1__*,void*) ;
 int lzh_make_huffman_table (TYPE_1__*) ;
 void* lzh_read_pt_bitlen (struct lzh_stream*,int,int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int
lzh_read_blocks(struct lzh_stream *strm, int last)
{
 struct lzh_dec *ds = strm->ds;
 struct lzh_br *br = &(ds->br);
 int c = 0, i;
 unsigned rbits;

 for (;;) {
  switch (ds->state) {
  case 136:







   if (!lzh_br_read_ahead_0(strm, br, 16)) {
    if (!last)

     return (ARCHIVE_OK);
    if (lzh_br_has(br, 8)) {






     goto failed;
    }
    if (ds->w_pos > 0) {
     lzh_emit_window(strm, ds->w_pos);
     ds->w_pos = 0;
     return (ARCHIVE_OK);
    }


    return (ARCHIVE_EOF);
   }
   ds->blocks_avail = lzh_br_bits(br, 16);
   if (ds->blocks_avail == 0)
    goto failed;
   lzh_br_consume(br, 16);




   ds->pt.len_size = ds->literal_pt_len_size;
   ds->pt.len_bits = ds->literal_pt_len_bits;
   ds->reading_position = 0;

  case 131:



   if (!lzh_br_read_ahead(strm, br, ds->pt.len_bits)) {
    if (last)
     goto failed;
    ds->state = 131;
    return (ARCHIVE_OK);
   }
   ds->pt.len_avail = lzh_br_bits(br, ds->pt.len_bits);
   lzh_br_consume(br, ds->pt.len_bits);

  case 130:
   if (ds->pt.len_avail == 0) {

    if (!lzh_br_read_ahead(strm, br,
        ds->pt.len_bits)) {
     if (last)
      goto failed;
     ds->state = 130;
     return (ARCHIVE_OK);
    }
    if (!lzh_make_fake_table(&(ds->pt),
        lzh_br_bits(br, ds->pt.len_bits)))
     goto failed;
    lzh_br_consume(br, ds->pt.len_bits);
    if (ds->reading_position)
     ds->state = 137;
    else
     ds->state = 135;
    break;
   } else if (ds->pt.len_avail > ds->pt.len_size)
    goto failed;
   ds->loop = 0;
   memset(ds->pt.freq, 0, sizeof(ds->pt.freq));
   if (ds->pt.len_avail < 3 ||
       ds->pt.len_size == ds->pos_pt_len_size) {
    ds->state = 128;
    break;
   }

  case 129:
   ds->loop = lzh_read_pt_bitlen(strm, ds->loop, 3);
   if (ds->loop < 3) {
    if (ds->loop < 0 || last)
     goto failed;

    ds->state = 129;
    return (ARCHIVE_OK);
   }

   if (!lzh_br_read_ahead(strm, br, 2)) {
    if (last)
     goto failed;
    ds->state = 129;
    return (ARCHIVE_OK);
   }
   c = lzh_br_bits(br, 2);
   lzh_br_consume(br, 2);
   if (c > ds->pt.len_avail - 3)
    goto failed;
   for (i = 3; c-- > 0 ;)
    ds->pt.bitlen[i++] = 0;
   ds->loop = i;

  case 128:
   ds->loop = lzh_read_pt_bitlen(strm, ds->loop,
       ds->pt.len_avail);
   if (ds->loop < ds->pt.len_avail) {
    if (ds->loop < 0 || last)
     goto failed;

    ds->state = 128;
    return (ARCHIVE_OK);
   }
   if (!lzh_make_huffman_table(&(ds->pt)))
    goto failed;
   if (ds->reading_position) {
    ds->state = 137;
    break;
   }

  case 135:
   if (!lzh_br_read_ahead(strm, br, ds->lt.len_bits)) {
    if (last)
     goto failed;
    ds->state = 135;
    return (ARCHIVE_OK);
   }
   ds->lt.len_avail = lzh_br_bits(br, ds->lt.len_bits);
   lzh_br_consume(br, ds->lt.len_bits);

  case 134:
   if (ds->lt.len_avail == 0) {

    if (!lzh_br_read_ahead(strm, br,
        ds->lt.len_bits)) {
     if (last)
      goto failed;
     ds->state = 134;
     return (ARCHIVE_OK);
    }
    if (!lzh_make_fake_table(&(ds->lt),
        lzh_br_bits(br, ds->lt.len_bits)))
     goto failed;
    lzh_br_consume(br, ds->lt.len_bits);
    ds->state = 132;
    break;
   } else if (ds->lt.len_avail > ds->lt.len_size)
    goto failed;
   ds->loop = 0;
   memset(ds->lt.freq, 0, sizeof(ds->lt.freq));

  case 133:
   i = ds->loop;
   while (i < ds->lt.len_avail) {
    if (!lzh_br_read_ahead(strm, br,
        ds->pt.max_bits)) {
     if (last)
      goto failed;
     ds->loop = i;
     ds->state = 133;
     return (ARCHIVE_OK);
    }
    rbits = lzh_br_bits(br, ds->pt.max_bits);
    c = lzh_decode_huffman(&(ds->pt), rbits);
    if (c > 2) {





     lzh_br_consume(br, ds->pt.bitlen[c]);
     c -= 2;
     ds->lt.freq[c]++;
     ds->lt.bitlen[i++] = c;
    } else if (c == 0) {
     lzh_br_consume(br, ds->pt.bitlen[c]);
     ds->lt.bitlen[i++] = 0;
    } else {

     int n = (c == 1)?4:9;
     if (!lzh_br_read_ahead(strm, br,
          ds->pt.bitlen[c] + n)) {
      if (last)
       goto failed;
      ds->loop = i;
      ds->state = 133;
      return (ARCHIVE_OK);
     }
     lzh_br_consume(br, ds->pt.bitlen[c]);
     c = lzh_br_bits(br, n);
     lzh_br_consume(br, n);
     c += (n == 4)?3:20;
     if (i + c > ds->lt.len_avail)
      goto failed;
     memset(&(ds->lt.bitlen[i]), 0, c);
     i += c;
    }
   }
   if (i > ds->lt.len_avail ||
       !lzh_make_huffman_table(&(ds->lt)))
    goto failed;

  case 132:




   ds->pt.len_size = ds->pos_pt_len_size;
   ds->pt.len_bits = ds->pos_pt_len_bits;
   ds->reading_position = 1;
   ds->state = 131;
   break;
  case 137:
   return (100);
  }
 }
failed:
 return (ds->error = ARCHIVE_FAILED);
}
