
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ptunit_result {int dummy; } ;
struct image_fixture {int image; } ;


 int pt_image_read (int *,int*,int*,int,int *,int) ;
 int pte_internal ;
 int ptu_int_eq (int,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int,int) ;

__attribute__((used)) static struct ptunit_result read_null_asid(struct image_fixture *ifix)
{
 uint8_t buffer[] = { 0xcc, 0xcc, 0xcc };
 int status, isid;

 isid = -1;
 status = pt_image_read(&ifix->image, &isid, buffer, 2, ((void*)0), 0x2003ull);
 ptu_int_eq(status, -pte_internal);
 ptu_int_eq(isid, -1);
 ptu_uint_eq(buffer[0], 0xcc);
 ptu_uint_eq(buffer[1], 0xcc);

 return ptu_passed();
}
