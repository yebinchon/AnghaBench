
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_image {int name; int sections; } ;


 int free (int ) ;
 int memset (struct pt_image*,int ,int) ;
 int pt_section_list_free_tail (int ) ;

void pt_image_fini(struct pt_image *image)
{
 if (!image)
  return;

 pt_section_list_free_tail(image->sections);
 free(image->name);

 memset(image, 0, sizeof(*image));
}
