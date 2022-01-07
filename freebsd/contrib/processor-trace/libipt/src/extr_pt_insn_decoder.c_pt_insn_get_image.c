
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_insn_decoder {struct pt_image* image; } ;
struct pt_image {int dummy; } ;



struct pt_image *pt_insn_get_image(struct pt_insn_decoder *decoder)
{
 if (!decoder)
  return ((void*)0);

 return decoder->image;
}
