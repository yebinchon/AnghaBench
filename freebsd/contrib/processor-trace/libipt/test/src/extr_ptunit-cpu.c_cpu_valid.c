
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_cpu {int vendor; int stepping; int model; int family; } ;


 int pcv_intel ;
 int pt_cpu_parse (struct pt_cpu*,char*) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int ,int) ;

__attribute__((used)) static struct ptunit_result cpu_valid(void)
{
 struct pt_cpu cpu;
 int error;

 error = pt_cpu_parse(&cpu, "6/44/2");
 ptu_int_eq(error, 0);
 ptu_int_eq(cpu.vendor, pcv_intel);
 ptu_uint_eq(cpu.family, 6);
 ptu_uint_eq(cpu.model, 44);
 ptu_uint_eq(cpu.stepping, 2);

 error = pt_cpu_parse(&cpu, "0xf/0x2c/0xf");
 ptu_int_eq(error, 0);
 ptu_int_eq(cpu.vendor, pcv_intel);
 ptu_uint_eq(cpu.family, 0xf);
 ptu_uint_eq(cpu.model, 0x2c);
 ptu_uint_eq(cpu.stepping, 0xf);

 error = pt_cpu_parse(&cpu, "022/054/017");
 ptu_int_eq(error, 0);
 ptu_int_eq(cpu.vendor, pcv_intel);
 ptu_uint_eq(cpu.family, 022);
 ptu_uint_eq(cpu.model, 054);
 ptu_uint_eq(cpu.stepping, 017);

 error = pt_cpu_parse(&cpu, "6/44");
 ptu_int_eq(error, 0);
 ptu_int_eq(cpu.vendor, pcv_intel);
 ptu_uint_eq(cpu.family, 6);
 ptu_uint_eq(cpu.model, 44);
 ptu_uint_eq(cpu.stepping, 0);

 return ptu_passed();
}
