
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ptunit_result {int dummy; } ;
struct image_fixture {int * asid; int image; int * section; } ;


 int pt_image_add (int *,int *,int *,int,int) ;
 int pt_image_read (int *,int*,int*,int,int *,int) ;
 int ptu_int_eq (int,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int,int) ;

__attribute__((used)) static struct ptunit_result overlap_back(struct image_fixture *ifix)
{
 uint8_t buffer[] = { 0xcc, 0xcc };
 int status, isid;

 status = pt_image_add(&ifix->image, &ifix->section[0], &ifix->asid[0],
         0x1000ull, 1);
 ptu_int_eq(status, 0);

 status = pt_image_add(&ifix->image, &ifix->section[1], &ifix->asid[0],
         0x1001ull, 2);
 ptu_int_eq(status, 0);

 isid = -1;
 status = pt_image_read(&ifix->image, &isid, buffer, 2, &ifix->asid[0],
          0x1000ull);
 ptu_int_eq(status, 1);
 ptu_int_eq(isid, 1);
 ptu_uint_eq(buffer[0], 0x00);
 ptu_uint_eq(buffer[1], 0xcc);

 isid = -1;
 status = pt_image_read(&ifix->image, &isid, buffer, 2, &ifix->asid[0],
          0x1010ull);
 ptu_int_eq(status, 1);
 ptu_int_eq(isid, 2);
 ptu_uint_eq(buffer[0], 0x0f);
 ptu_uint_eq(buffer[1], 0xcc);

 isid = -1;
 status = pt_image_read(&ifix->image, &isid, buffer, 1, &ifix->asid[0],
          0x1001ull);
 ptu_int_eq(status, 1);
 ptu_int_eq(isid, 2);
 ptu_uint_eq(buffer[0], 0x00);
 ptu_uint_eq(buffer[1], 0xcc);

 return ptu_passed();
}
