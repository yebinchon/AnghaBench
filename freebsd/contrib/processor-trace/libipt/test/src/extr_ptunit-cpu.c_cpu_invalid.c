
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_cpu {int dummy; } ;


 int pt_cpu_parse (struct pt_cpu*,char*) ;
 int pte_invalid ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result cpu_invalid(void)
{
 struct pt_cpu cpu;
 int error;

 error = pt_cpu_parse(&cpu, "e/44/2");
 ptu_int_eq(error, -pte_invalid);

 error = pt_cpu_parse(&cpu, "6/e/2");
 ptu_int_eq(error, -pte_invalid);

 error = pt_cpu_parse(&cpu, "6/44/e");
 ptu_int_eq(error, -pte_invalid);

 error = pt_cpu_parse(&cpu, "65536/44/2");
 ptu_int_eq(error, -pte_invalid);

 error = pt_cpu_parse(&cpu, "6/256/2");
 ptu_int_eq(error, -pte_invalid);

 error = pt_cpu_parse(&cpu, "6/44/256");
 ptu_int_eq(error, -pte_invalid);

 error = pt_cpu_parse(&cpu, "-1/44/2");
 ptu_int_eq(error, -pte_invalid);

 error = pt_cpu_parse(&cpu, "6/-1/2");
 ptu_int_eq(error, -pte_invalid);

 error = pt_cpu_parse(&cpu, "6/44/-1");
 ptu_int_eq(error, -pte_invalid);

 return ptu_passed();
}
