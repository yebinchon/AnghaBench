
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ptunit_result {int dummy; } ;
struct pt_asid {int dummy; } ;
struct image_fixture {int image; } ;
typedef int buffer ;


 int pt_asid_init (struct pt_asid*) ;
 int pt_image_read (int *,int*,int*,int,struct pt_asid*,int) ;
 int pte_nomap ;
 int ptu_int_eq (int,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int,int) ;

__attribute__((used)) static struct ptunit_result read_empty(struct image_fixture *ifix)
{
 struct pt_asid asid;
 uint8_t buffer[] = { 0xcc, 0xcc };
 int status, isid;

 pt_asid_init(&asid);

 isid = -1;
 status = pt_image_read(&ifix->image, &isid, buffer, sizeof(buffer),
          &asid, 0x1000ull);
 ptu_int_eq(status, -pte_nomap);
 ptu_int_eq(isid, -1);
 ptu_uint_eq(buffer[0], 0xcc);
 ptu_uint_eq(buffer[1], 0xcc);

 return ptu_passed();
}
