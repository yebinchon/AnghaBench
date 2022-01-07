
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ptunit_result {int dummy; } ;
struct image_fixture {int * asid; int image; TYPE_1__* mapping; } ;
struct TYPE_2__ {int errcode; } ;


 int pt_image_read (int *,int*,int*,int,int *,int) ;
 int pte_nosync ;
 int ptu_int_eq (int,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int,int) ;

__attribute__((used)) static struct ptunit_result read_spurious_error(struct image_fixture *ifix)
{
 uint8_t buffer[] = { 0xcc, 0xcc };
 int status, isid;

 isid = -1;
 status = pt_image_read(&ifix->image, &isid, buffer, 1, &ifix->asid[0],
          0x1000ull);
 ptu_int_eq(status, 1);
 ptu_int_eq(isid, 10);
 ptu_uint_eq(buffer[0], 0x00);
 ptu_uint_eq(buffer[1], 0xcc);

 ifix->mapping[0].errcode = -pte_nosync;

 isid = -1;
 status = pt_image_read(&ifix->image, &isid, buffer, 1, &ifix->asid[0],
          0x1005ull);
 ptu_int_eq(status, -pte_nosync);
 ptu_int_eq(isid, 10);
 ptu_uint_eq(buffer[0], 0x00);

 return ptu_passed();
}
