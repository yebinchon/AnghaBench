
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_section {int dummy; } ;
struct pt_mapped_section {int dummy; } ;


 int pt_msec_begin (struct pt_mapped_section*) ;
 int pt_msec_init (struct pt_mapped_section*,struct pt_section*,int *,int,int,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int ,int) ;

__attribute__((used)) static struct ptunit_result begin(void)
{
 struct pt_mapped_section msec;
 struct pt_section sec;
 uint64_t begin;

 pt_msec_init(&msec, &sec, ((void*)0), 0x2000ull, 0x100ull, 0x1000ull);

 begin = pt_msec_begin(&msec);
 ptu_uint_eq(begin, 0x2000);

 return ptu_passed();
}
