
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_image {int dummy; } ;
struct pt_block_decoder {struct pt_image* image; } ;



struct pt_image *pt_blk_get_image(struct pt_block_decoder *decoder)
{
 if (!decoder)
  return ((void*)0);

 return decoder->image;
}
