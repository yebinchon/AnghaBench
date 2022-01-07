
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ptunit_result {int dummy; } ;
struct image_fixture {int * asid; int image; int iscache; int * section; } ;


 int ifix_cache_section (struct image_fixture*,int *,int) ;
 int pt_image_add_cached (int *,int *,int,int *) ;
 int pt_image_read (int *,int*,int*,int,int *,int) ;
 int ptu_int_eq (int,int) ;
 int ptu_int_gt (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int,int) ;

__attribute__((used)) static struct ptunit_result add_cached_twice(struct image_fixture *ifix)
{
 uint8_t buffer[] = { 0xcc, 0xcc, 0xcc };
 int status, isid, risid;

 isid = ifix_cache_section(ifix, &ifix->section[0], 0x1000ull);
 ptu_int_gt(isid, 0);

 status = pt_image_add_cached(&ifix->image, &ifix->iscache, isid,
          &ifix->asid[0]);
 ptu_int_eq(status, 0);

 status = pt_image_add_cached(&ifix->image, &ifix->iscache, isid,
          &ifix->asid[0]);
 ptu_int_eq(status, 0);

 risid = -1;
 status = pt_image_read(&ifix->image, &risid, buffer, 2, &ifix->asid[0],
          0x1003ull);
 ptu_int_eq(status, 2);
 ptu_int_eq(risid, isid);
 ptu_uint_eq(buffer[0], 0x03);
 ptu_uint_eq(buffer[1], 0x04);
 ptu_uint_eq(buffer[2], 0xcc);

 return ptu_passed();
}
