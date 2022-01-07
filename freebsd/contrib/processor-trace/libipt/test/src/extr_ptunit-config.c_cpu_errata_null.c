
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_errata {int dummy; } ;
struct pt_cpu {int dummy; } ;


 int pt_cpu_errata (struct pt_errata*,struct pt_cpu*) ;
 int pte_invalid ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result cpu_errata_null(void)
{
 struct pt_errata errata;
 struct pt_cpu cpu;
 int errcode;

 errcode = pt_cpu_errata(&errata, ((void*)0));
 ptu_int_eq(errcode, -pte_invalid);

 errcode = pt_cpu_errata(((void*)0), &cpu);
 ptu_int_eq(errcode, -pte_invalid);

 return ptu_passed();
}
