
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct huffman {int shift_bits; int len_avail; int tree_used; struct htree_t* tree; } ;
struct htree_t {int left; int right; } ;



__attribute__((used)) static int
lzh_decode_huffman_tree(struct huffman *hf, unsigned rbits, int c)
{
 struct htree_t *ht;
 int extlen;

 ht = hf->tree;
 extlen = hf->shift_bits;
 while (c >= hf->len_avail) {
  c -= hf->len_avail;
  if (extlen-- <= 0 || c >= hf->tree_used)
   return (0);
  if (rbits & (1U << extlen))
   c = ht[c].left;
  else
   c = ht[c].right;
 }
 return (c);
}
