
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ptunit_result {int dummy; } ;
struct image_fixture {int * asid; int image; int iscache; } ;


 int pt_image_add_cached (int *,int *,int,int *) ;
 int pt_image_read (int *,int*,int*,int,int *,int) ;
 int pte_bad_image ;
 int pte_nomap ;
 int ptu_int_eq (int,int) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result add_cached_bad_isid(struct image_fixture *ifix)
{
 uint8_t buffer[] = { 0xcc, 0xcc, 0xcc };
 int status, isid;

 status = pt_image_add_cached(&ifix->image, &ifix->iscache, 1,
          &ifix->asid[0]);
 ptu_int_eq(status, -pte_bad_image);

 isid = -1;
 status = pt_image_read(&ifix->image, &isid, buffer, 2, &ifix->asid[0],
          0x1003ull);
 ptu_int_eq(status, -pte_nomap);
 ptu_int_eq(isid, -1);

 return ptu_passed();
}
