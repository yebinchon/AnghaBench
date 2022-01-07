
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union descriptor {int dummy; } descriptor ;
struct i386_ldt_args {int start; int num; union descriptor* descs; } ;


 int I386_GET_LDT ;
 int sysarch (int ,struct i386_ldt_args*) ;

int
i386_get_ldt(int start, union descriptor *descs, int num)
{
 struct i386_ldt_args p;

 p.start = start;
 p.descs = descs;
 p.num = num;

 return sysarch(I386_GET_LDT, &p);
}
