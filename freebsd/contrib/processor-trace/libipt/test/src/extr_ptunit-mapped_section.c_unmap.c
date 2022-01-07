
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_mapped_section {int dummy; } ;


 int pt_msec_init (struct pt_mapped_section*,int *,int *,int,int,int) ;
 int pt_msec_unmap (struct pt_mapped_section*,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int ,int) ;

__attribute__((used)) static struct ptunit_result unmap(void)
{
 struct pt_mapped_section msec;
 uint64_t offset;

 pt_msec_init(&msec, ((void*)0), ((void*)0), 0x2000ull, 0x100ull, 0x1000ull);

 offset = pt_msec_unmap(&msec, 0x3000);
 ptu_uint_eq(offset, 0x1100);

 return ptu_passed();
}
