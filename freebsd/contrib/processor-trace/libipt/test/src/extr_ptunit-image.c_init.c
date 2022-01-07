
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptunit_result {int dummy; } ;
struct TYPE_2__ {void* context; scalar_t__ callback; } ;
struct pt_image {void* name; void* sections; TYPE_1__ readmem; } ;
typedef int image ;


 int memset (struct pt_image*,int,int) ;
 int pt_image_init (struct pt_image*,int *) ;
 int ptu_null (void*) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result init(void)
{
 struct pt_image image;

 memset(&image, 0xcd, sizeof(image));

 pt_image_init(&image, ((void*)0));
 ptu_null(image.name);
 ptu_null(image.sections);
 ptu_null((void *) (uintptr_t) image.readmem.callback);
 ptu_null(image.readmem.context);

 return ptu_passed();
}
