
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ptunit_result {int dummy; } ;
struct image_fixture {int * asid; int copy; int image; int * section; } ;


 int pt_image_add (int *,int *,int *,int,int) ;
 int pt_image_copy (int *,int *) ;
 int pt_image_read (int *,int*,int*,int,int *,int) ;
 int ptu_int_eq (int,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int,int) ;

__attribute__((used)) static struct ptunit_result copy_overlap(struct image_fixture *ifix)
{
 uint8_t buffer[] = { 0xcc, 0xcc };
 int status, isid;

 status = pt_image_add(&ifix->copy, &ifix->section[0], &ifix->asid[0],
         0x2000ull, 1);
 ptu_int_eq(status, 0);

 status = pt_image_add(&ifix->copy, &ifix->section[1], &ifix->asid[0],
         0x2010ull, 2);
 ptu_int_eq(status, 0);

 status = pt_image_add(&ifix->image, &ifix->section[2], &ifix->asid[0],
         0x2008ull, 3);
 ptu_int_eq(status, 0);

 status = pt_image_copy(&ifix->copy, &ifix->image);
 ptu_int_eq(status, 0);

 isid = -1;
 status = pt_image_read(&ifix->copy, &isid, buffer, 1, &ifix->asid[0],
          0x2003ull);
 ptu_int_eq(status, 1);
 ptu_int_eq(isid, 1);
 ptu_uint_eq(buffer[0], 0x03);
 ptu_uint_eq(buffer[1], 0xcc);

 isid = -1;
 status = pt_image_read(&ifix->copy, &isid, buffer, 1, &ifix->asid[0],
          0x200aull);
 ptu_int_eq(status, 1);
 ptu_int_eq(isid, 3);
 ptu_uint_eq(buffer[0], 0x02);
 ptu_uint_eq(buffer[1], 0xcc);

 isid = -1;
 status = pt_image_read(&ifix->copy, &isid, buffer, 1, &ifix->asid[0],
          0x2016ull);
 ptu_int_eq(status, 1);
 ptu_int_eq(isid, 3);
 ptu_uint_eq(buffer[0], 0x0e);
 ptu_uint_eq(buffer[1], 0xcc);

 isid = -1;
 status = pt_image_read(&ifix->copy, &isid, buffer, 1, &ifix->asid[0],
          0x2019ull);
 ptu_int_eq(status, 1);
 ptu_int_eq(isid, 2);
 ptu_uint_eq(buffer[0], 0x09);
 ptu_uint_eq(buffer[1], 0xcc);

 return ptu_passed();
}
