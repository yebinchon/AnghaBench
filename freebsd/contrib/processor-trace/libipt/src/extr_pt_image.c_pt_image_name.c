
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_image {char const* name; } ;



const char *pt_image_name(const struct pt_image *image)
{
 if (!image)
  return ((void*)0);

 return image->name;
}
