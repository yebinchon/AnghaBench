
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ptunit_result {int dummy; } ;
struct image_fixture {int * asid; int copy; int image; } ;


 int pt_image_copy (int *,int *) ;
 int pt_image_read (int *,int*,int*,int,int *,int) ;
 int ptu_int_eq (int,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int,int) ;

__attribute__((used)) static struct ptunit_result copy(struct image_fixture *ifix)
{
 uint8_t buffer[] = { 0xcc, 0xcc, 0xcc };
 int status, isid;

 status = pt_image_copy(&ifix->copy, &ifix->image);
 ptu_int_eq(status, 0);

 isid = -1;
 status = pt_image_read(&ifix->copy, &isid, buffer, 2, &ifix->asid[1],
          0x2003ull);
 ptu_int_eq(status, 2);
 ptu_int_eq(isid, 11);
 ptu_uint_eq(buffer[0], 0x03);
 ptu_uint_eq(buffer[1], 0x04);
 ptu_uint_eq(buffer[2], 0xcc);

 return ptu_passed();
}
