
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ptunit_result {int dummy; } ;
struct image_fixture {int image; int * asid; } ;


 int pt_image_read (int *,int*,int *,int,int *,int) ;
 int pte_internal ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result read_null(struct image_fixture *ifix)
{
 uint8_t buffer;
 int status, isid;

 status = pt_image_read(((void*)0), &isid, &buffer, 1, &ifix->asid[0],
          0x1000ull);
 ptu_int_eq(status, -pte_internal);

 status = pt_image_read(&ifix->image, ((void*)0), &buffer, 1, &ifix->asid[0],
          0x1000ull);
 ptu_int_eq(status, -pte_internal);

 status = pt_image_read(&ifix->image, &isid, ((void*)0), 1, &ifix->asid[0],
          0x1000ull);
 ptu_int_eq(status, -pte_internal);

 status = pt_image_read(&ifix->image, &isid, &buffer, 1, ((void*)0),
          0x1000ull);
 ptu_int_eq(status, -pte_internal);

 return ptu_passed();
}
