
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct huffman {int tree_avail; int len_size; int tbl_bits; int * tree; int * tbl; int * bitlen; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int HTBL_BITS ;
 void* malloc (int) ;

__attribute__((used)) static int
lzh_huffman_init(struct huffman *hf, size_t len_size, int tbl_bits)
{
 int bits;

 if (hf->bitlen == ((void*)0)) {
  hf->bitlen = malloc(len_size * sizeof(hf->bitlen[0]));
  if (hf->bitlen == ((void*)0))
   return (ARCHIVE_FATAL);
 }
 if (hf->tbl == ((void*)0)) {
  if (tbl_bits < HTBL_BITS)
   bits = tbl_bits;
  else
   bits = HTBL_BITS;
  hf->tbl = malloc(((size_t)1 << bits) * sizeof(hf->tbl[0]));
  if (hf->tbl == ((void*)0))
   return (ARCHIVE_FATAL);
 }
 if (hf->tree == ((void*)0) && tbl_bits > HTBL_BITS) {
  hf->tree_avail = 1 << (tbl_bits - HTBL_BITS + 4);
  hf->tree = malloc(hf->tree_avail * sizeof(hf->tree[0]));
  if (hf->tree == ((void*)0))
   return (ARCHIVE_FATAL);
 }
 hf->len_size = (int)len_size;
 hf->tbl_bits = tbl_bits;
 return (ARCHIVE_OK);
}
