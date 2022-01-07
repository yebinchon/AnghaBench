
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct ptunit_result {int dummy; } ;
struct image_fixture {int * asid; int copy; int image; TYPE_2__* section; TYPE_1__* mapping; } ;
struct TYPE_4__ {int size; } ;
struct TYPE_3__ {int size; } ;


 int pt_image_add (int *,TYPE_2__*,int *,int,int) ;
 int pt_image_copy (int *,int *) ;
 int pt_image_read (int *,int*,int*,int,int *,int) ;
 int ptu_int_eq (int,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int,int) ;

__attribute__((used)) static struct ptunit_result copy_replace(struct image_fixture *ifix)
{
 uint8_t buffer[] = { 0xcc, 0xcc, 0xcc };
 int status, isid;

 ifix->section[0].size = 0x8;
 ifix->mapping[0].size = 0x8;

 status = pt_image_add(&ifix->copy, &ifix->section[0], &ifix->asid[0],
         0x1004ull, 1);
 ptu_int_eq(status, 0);

 status = pt_image_add(&ifix->image, &ifix->section[1], &ifix->asid[0],
         0x1000ull, 2);
 ptu_int_eq(status, 0);

 status = pt_image_copy(&ifix->copy, &ifix->image);
 ptu_int_eq(status, 0);

 isid = -1;
 status = pt_image_read(&ifix->copy, &isid, buffer, 2, &ifix->asid[0],
          0x1003ull);
 ptu_int_eq(status, 2);
 ptu_int_eq(isid, 2);
 ptu_uint_eq(buffer[0], 0x03);
 ptu_uint_eq(buffer[1], 0x04);
 ptu_uint_eq(buffer[2], 0xcc);

 return ptu_passed();
}
