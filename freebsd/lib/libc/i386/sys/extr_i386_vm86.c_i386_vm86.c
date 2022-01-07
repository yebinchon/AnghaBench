
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i386_vm86_args {int sub_op; char* sub_args; } ;


 int I386_VM86 ;
 int sysarch (int ,struct i386_vm86_args*) ;

int
i386_vm86(int fcn, void *data)
{
 struct i386_vm86_args p;

 p.sub_op = fcn;
 p.sub_args = (char *)data;

 return (sysarch(I386_VM86, &p));
}
