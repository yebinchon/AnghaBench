
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct huffman {int tbl; int bitlen; } ;


 int free (int ) ;

__attribute__((used)) static void
lzx_huffman_free(struct huffman *hf)
{
 free(hf->bitlen);
 free(hf->tbl);
}
