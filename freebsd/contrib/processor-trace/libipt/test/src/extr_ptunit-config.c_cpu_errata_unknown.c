
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_errata {int dummy; } ;
struct pt_cpu {int dummy; } ;
typedef int cpu ;


 int memset (struct pt_cpu*,int ,int) ;
 int pt_cpu_errata (struct pt_errata*,struct pt_cpu*) ;
 int pte_bad_cpu ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result cpu_errata_unknown(void)
{
 struct pt_errata errata;
 struct pt_cpu cpu;
 int errcode;

 memset(&cpu, 0, sizeof(cpu));

 errcode = pt_cpu_errata(&errata, &cpu);
 ptu_int_eq(errcode, -pte_bad_cpu);

 return ptu_passed();
}
