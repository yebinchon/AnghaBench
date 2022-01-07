
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ptunit_result {int dummy; } ;
struct image_fixture {int * asid; int image; } ;
typedef int buffer ;


 int pt_image_read (int *,int*,int*,int,int *,int) ;
 int ptu_int_eq (int,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int,int) ;

__attribute__((used)) static struct ptunit_result read_truncated(struct image_fixture *ifix)
{
 uint8_t buffer[] = { 0xcc, 0xcc };
 int status, isid;

 isid = -1;
 status = pt_image_read(&ifix->image, &isid, buffer, sizeof(buffer),
          &ifix->asid[0], 0x100full);
 ptu_int_eq(status, 1);
 ptu_int_eq(isid, 10);
 ptu_uint_eq(buffer[0], 0x0f);
 ptu_uint_eq(buffer[1], 0xcc);

 return ptu_passed();
}
