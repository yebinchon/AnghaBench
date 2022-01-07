
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct huffman {int len_size; int tbl_bits; int * tbl; int * bitlen; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int * calloc (size_t,int) ;
 int free (int *) ;
 int * malloc (size_t) ;
 int memset (int *,int ,size_t) ;

__attribute__((used)) static int
lzx_huffman_init(struct huffman *hf, size_t len_size, int tbl_bits)
{

 if (hf->bitlen == ((void*)0) || hf->len_size != (int)len_size) {
  free(hf->bitlen);
  hf->bitlen = calloc(len_size, sizeof(hf->bitlen[0]));
  if (hf->bitlen == ((void*)0))
   return (ARCHIVE_FATAL);
  hf->len_size = (int)len_size;
 } else
  memset(hf->bitlen, 0, len_size * sizeof(hf->bitlen[0]));
 if (hf->tbl == ((void*)0)) {
  hf->tbl = malloc(((size_t)1 << tbl_bits) * sizeof(hf->tbl[0]));
  if (hf->tbl == ((void*)0))
   return (ARCHIVE_FATAL);
  hf->tbl_bits = tbl_bits;
 }
 return (ARCHIVE_OK);
}
