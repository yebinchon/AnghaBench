
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i386_ioperm_args {unsigned int start; unsigned int length; int enable; } ;


 int I386_GET_IOPERM ;
 int sysarch (int ,struct i386_ioperm_args*) ;

int
i386_get_ioperm(unsigned int start, unsigned int *length, int *enable)
{
 struct i386_ioperm_args p;
 int error;

 p.start = start;
 p.length = *length;
 p.enable = *enable;

 error = sysarch(I386_GET_IOPERM, &p);

 *length = p.length;
 *enable = p.enable;

 return (error);
}
