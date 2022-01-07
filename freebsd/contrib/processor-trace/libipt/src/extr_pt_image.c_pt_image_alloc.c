
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_image {int dummy; } ;


 struct pt_image* malloc (int) ;
 int pt_image_init (struct pt_image*,char const*) ;

struct pt_image *pt_image_alloc(const char *name)
{
 struct pt_image *image;

 image = malloc(sizeof(*image));
 if (image)
  pt_image_init(image, name);

 return image;
}
