
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int func_ptr ;


 int const* jcr_ptr ;
 int jcr_run ;

void
_Jv_RegisterClasses(const func_ptr *jcr)
{

 jcr_run = 1;
 jcr_ptr = jcr;
}
