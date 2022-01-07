
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ptunit_result {int dummy; } ;
struct pt_image_section_cache {int dummy; } ;
typedef int buffer ;


 int pt_iscache_read (struct pt_image_section_cache*,int *,unsigned long long,int,unsigned long long) ;
 int pte_invalid ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result read_null(void)
{
 struct pt_image_section_cache iscache;
 uint8_t buffer;
 int errcode;

 errcode = pt_iscache_read(((void*)0), &buffer, sizeof(buffer), 1ull, 0ull);
 ptu_int_eq(errcode, -pte_invalid);

 errcode = pt_iscache_read(&iscache, ((void*)0), sizeof(buffer), 1ull, 0ull);
 ptu_int_eq(errcode, -pte_invalid);

 errcode = pt_iscache_read(&iscache, &buffer, 0ull, 1, 0ull);
 ptu_int_eq(errcode, -pte_invalid);

 return ptu_passed();
}
