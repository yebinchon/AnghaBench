
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct huffman {int* tbl; int len_size; } ;



__attribute__((used)) static inline int
lzx_decode_huffman(struct huffman *hf, unsigned rbits)
{
 int c;
 c = hf->tbl[rbits];
 if (c < hf->len_size)
  return (c);
 return (0);
}
