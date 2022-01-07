
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct huffman {scalar_t__ len_size; size_t* tbl; scalar_t__* bitlen; scalar_t__ shift_bits; scalar_t__ max_bits; } ;



__attribute__((used)) static int
lzh_make_fake_table(struct huffman *hf, uint16_t c)
{
 if (c >= hf->len_size)
  return (0);
 hf->tbl[0] = c;
 hf->max_bits = 0;
 hf->shift_bits = 0;
 hf->bitlen[hf->tbl[0]] = 0;
 return (1);
}
