
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptunit_result {int dummy; } ;
struct image_fixture {TYPE_1__* asid; scalar_t__ nsecs; int iscache; int * section; int * mapping; int * status; int copy; int image; } ;
struct TYPE_2__ {int cr3; } ;


 int ifix_add_section (struct image_fixture*,char*) ;
 int memset (int *,int ,int) ;
 int pt_asid_init (TYPE_1__*) ;
 int pt_image_init (int *,int *) ;
 int ptu_int_eq (int,int) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result ifix_init(struct image_fixture *ifix)
{
 int index;

 pt_image_init(&ifix->image, ((void*)0));
 pt_image_init(&ifix->copy, ((void*)0));

 memset(ifix->status, 0, sizeof(ifix->status));
 memset(ifix->mapping, 0, sizeof(ifix->mapping));
 memset(ifix->section, 0, sizeof(ifix->section));
 memset(&ifix->iscache, 0, sizeof(ifix->iscache));

 ifix->nsecs = 0;

 index = ifix_add_section(ifix, "file-0");
 ptu_int_eq(index, 0);

 index = ifix_add_section(ifix, "file-1");
 ptu_int_eq(index, 1);

 index = ifix_add_section(ifix, "file-2");
 ptu_int_eq(index, 2);

 pt_asid_init(&ifix->asid[0]);
 ifix->asid[0].cr3 = 0xa000;

 pt_asid_init(&ifix->asid[1]);
 ifix->asid[1].cr3 = 0xb000;

 pt_asid_init(&ifix->asid[2]);
 ifix->asid[2].cr3 = 0xc000;

 return ptu_passed();
}
