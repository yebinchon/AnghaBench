
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ptunit_result {int dummy; } ;
struct image_fixture {int * asid; int image; TYPE_1__* status; int * section; } ;
struct TYPE_2__ {int deleted; } ;


 int pt_image_read (int *,int*,int*,int,int *,int) ;
 int pt_image_remove (int *,int *,int *,int) ;
 int pte_bad_image ;
 int ptu_int_eq (int,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int,int) ;

__attribute__((used)) static struct ptunit_result remove_bad_asid(struct image_fixture *ifix)
{
 uint8_t buffer[] = { 0xcc, 0xcc, 0xcc };
 int status, isid;

 isid = -1;
 status = pt_image_read(&ifix->image, &isid, buffer, 2, &ifix->asid[0],
          0x1001ull);
 ptu_int_eq(status, 2);
 ptu_int_eq(isid, 10);
 ptu_uint_eq(buffer[0], 0x01);
 ptu_uint_eq(buffer[1], 0x02);
 ptu_uint_eq(buffer[2], 0xcc);

 status = pt_image_remove(&ifix->image, &ifix->section[0],
     &ifix->asid[1], 0x1000ull);
 ptu_int_eq(status, -pte_bad_image);

 ptu_int_eq(ifix->status[0].deleted, 0);
 ptu_int_eq(ifix->status[1].deleted, 0);

 isid = -1;
 status = pt_image_read(&ifix->image, &isid, buffer, 2, &ifix->asid[0],
          0x1003ull);
 ptu_int_eq(status, 2);
 ptu_int_eq(isid, 10);
 ptu_uint_eq(buffer[0], 0x03);
 ptu_uint_eq(buffer[1], 0x04);
 ptu_uint_eq(buffer[2], 0xcc);

 isid = -1;
 status = pt_image_read(&ifix->image, &isid, buffer, 2, &ifix->asid[1],
          0x2005ull);
 ptu_int_eq(status, 2);
 ptu_int_eq(isid, 11);
 ptu_uint_eq(buffer[0], 0x05);
 ptu_uint_eq(buffer[1], 0x06);
 ptu_uint_eq(buffer[2], 0xcc);

 return ptu_passed();
}
