
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct image_fixture {int * asid; int * section; int image; } ;


 int ifix_init ;
 int pt_image_add (int *,int *,int *,int,int) ;
 int ptu_check (int ,struct image_fixture*) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result rfix_init(struct image_fixture *ifix)
{
 int status;

 ptu_check(ifix_init, ifix);

 status = pt_image_add(&ifix->image, &ifix->section[0], &ifix->asid[0],
         0x1000ull, 10);
 ptu_int_eq(status, 0);

 status = pt_image_add(&ifix->image, &ifix->section[1], &ifix->asid[1],
         0x2000ull, 11);
 ptu_int_eq(status, 0);

 return ptu_passed();
}
