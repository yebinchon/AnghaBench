
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ptunit_result {int dummy; } ;
struct TYPE_4__ {void* context; scalar_t__ callback; } ;
struct TYPE_5__ {void* sections; TYPE_1__ readmem; int name; } ;
struct image_fixture {TYPE_2__ image; } ;


 int memset (TYPE_2__*,int,int) ;
 int pt_image_init (TYPE_2__*,char*) ;
 int ptu_null (void*) ;
 struct ptunit_result ptu_passed () ;
 int ptu_str_eq (int ,char*) ;

__attribute__((used)) static struct ptunit_result init_name(struct image_fixture *ifix)
{
 memset(&ifix->image, 0xcd, sizeof(ifix->image));

 pt_image_init(&ifix->image, "image-name");
 ptu_str_eq(ifix->image.name, "image-name");
 ptu_null(ifix->image.sections);
 ptu_null((void *) (uintptr_t) ifix->image.readmem.callback);
 ptu_null(ifix->image.readmem.context);

 return ptu_passed();
}
