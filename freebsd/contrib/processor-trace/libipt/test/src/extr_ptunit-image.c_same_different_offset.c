
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct ptunit_result {int dummy; } ;
struct image_fixture {int * asid; int image; TYPE_2__* section; TYPE_1__* mapping; } ;
struct TYPE_4__ {int size; scalar_t__ offset; int filename; } ;
struct TYPE_3__ {int size; int* content; } ;


 int ifix_add_section (struct image_fixture*,int ) ;
 int pt_image_add (int *,TYPE_2__*,int *,int,int ) ;
 int pt_image_read (int *,int*,int*,int,int *,int) ;
 int ptu_int_eq (int,int) ;
 int ptu_int_gt (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int,int) ;

__attribute__((used)) static struct ptunit_result same_different_offset(struct image_fixture *ifix)
{
 uint8_t buffer[] = { 0xcc, 0xcc }, i;
 int status, isid, index;




 index = ifix_add_section(ifix, ifix->section[0].filename);
 ptu_int_gt(index, 0);

 ifix->section[index].offset = ifix->section[0].offset + 0x10;
 ptu_uint_eq(ifix->section[index].size, ifix->section[0].size);


 for (i = 0; i < ifix->mapping[index].size; ++i)
  ifix->mapping[index].content[i] += 0x10;


 status = pt_image_add(&ifix->image, &ifix->section[0], &ifix->asid[0],
         0x1000ull, 0);
 ptu_int_eq(status, 0);

 status = pt_image_add(&ifix->image, &ifix->section[index],
         &ifix->asid[0], 0x1000ull, 0);
 ptu_int_eq(status, 0);

 isid = -1;
 status = pt_image_read(&ifix->image, &isid, buffer, 1, &ifix->asid[0],
          0x1000ull);
 ptu_int_eq(status, 1);
 ptu_int_eq(isid, 0);
 ptu_uint_eq(buffer[0], 0x10);
 ptu_uint_eq(buffer[1], 0xcc);

 isid = -1;
 status = pt_image_read(&ifix->image, &isid, buffer, 1, &ifix->asid[0],
          0x100full);
 ptu_int_eq(status, 1);
 ptu_int_eq(isid, 0);
 ptu_uint_eq(buffer[0], 0x1f);
 ptu_uint_eq(buffer[1], 0xcc);

 return ptu_passed();
}
