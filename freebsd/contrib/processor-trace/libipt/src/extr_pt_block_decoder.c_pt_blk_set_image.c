
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_image {int dummy; } ;
struct pt_block_decoder {struct pt_image* image; struct pt_image default_image; } ;


 int pte_invalid ;

int pt_blk_set_image(struct pt_block_decoder *decoder, struct pt_image *image)
{
 if (!decoder)
  return -pte_invalid;

 if (!image)
  image = &decoder->default_image;

 decoder->image = image;
 return 0;
}
