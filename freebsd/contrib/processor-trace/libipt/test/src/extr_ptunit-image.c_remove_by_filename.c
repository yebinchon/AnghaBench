
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct ptunit_result {int dummy; } ;
struct image_fixture {int * asid; int image; TYPE_2__* status; TYPE_1__* section; } ;
typedef int buffer ;
struct TYPE_4__ {int deleted; } ;
struct TYPE_3__ {int filename; } ;


 int pt_image_read (int *,int*,int*,int,int *,int) ;
 int pt_image_remove_by_filename (int *,int ,int *) ;
 int pte_nomap ;
 int ptu_int_eq (int,int) ;
 int ptu_int_ne (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int,int) ;

__attribute__((used)) static struct ptunit_result remove_by_filename(struct image_fixture *ifix)
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

 status = pt_image_remove_by_filename(&ifix->image,
          ifix->section[0].filename,
          &ifix->asid[0]);
 ptu_int_eq(status, 1);

 ptu_int_ne(ifix->status[0].deleted, 0);
 ptu_int_eq(ifix->status[1].deleted, 0);

 isid = -1;
 status = pt_image_read(&ifix->image, &isid, buffer, sizeof(buffer),
          &ifix->asid[0], 0x1003ull);
 ptu_int_eq(status, -pte_nomap);
 ptu_int_eq(isid, -1);
 ptu_uint_eq(buffer[0], 0x01);
 ptu_uint_eq(buffer[1], 0x02);
 ptu_uint_eq(buffer[2], 0xcc);

 isid = -1;
 status = pt_image_read(&ifix->image, &isid, buffer, 2, &ifix->asid[1],
          0x2003ull);
 ptu_int_eq(status, 2);
 ptu_int_eq(isid, 11);
 ptu_uint_eq(buffer[0], 0x03);
 ptu_uint_eq(buffer[1], 0x04);
 ptu_uint_eq(buffer[2], 0xcc);

 return ptu_passed();
}
