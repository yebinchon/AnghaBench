
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_image {int name; } ;


 int dupstr (char const*) ;
 int memset (struct pt_image*,int ,int) ;

void pt_image_init(struct pt_image *image, const char *name)
{
 if (!image)
  return;

 memset(image, 0, sizeof(*image));

 image->name = dupstr(name);
}
