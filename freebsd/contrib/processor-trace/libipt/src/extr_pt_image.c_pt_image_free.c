
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_image {int dummy; } ;


 int free (struct pt_image*) ;
 int pt_image_fini (struct pt_image*) ;

void pt_image_free(struct pt_image *image)
{
 pt_image_fini(image);
 free(image);
}
