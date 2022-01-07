
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct huffman {int* tbl; unsigned int shift_bits; int len_avail; } ;


 int lzh_decode_huffman_tree (struct huffman*,unsigned int,int) ;

__attribute__((used)) static inline int
lzh_decode_huffman(struct huffman *hf, unsigned rbits)
{
 int c;




 c = hf->tbl[rbits >> hf->shift_bits];
 if (c < hf->len_avail || hf->len_avail == 0)
  return (c);

 return (lzh_decode_huffman_tree(hf, rbits, c));
}
