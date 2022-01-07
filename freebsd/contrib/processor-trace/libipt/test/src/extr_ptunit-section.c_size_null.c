
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ptunit_result {int dummy; } ;


 int pt_section_size (int *) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int ,unsigned long long) ;

__attribute__((used)) static struct ptunit_result size_null(void)
{
 uint64_t size;

 size = pt_section_size(((void*)0));
 ptu_uint_eq(size, 0ull);

 return ptu_passed();
}
