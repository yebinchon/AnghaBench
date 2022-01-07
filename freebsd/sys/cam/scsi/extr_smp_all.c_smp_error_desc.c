
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int function_result; char const* desc; } ;


 int nitems (TYPE_1__*) ;
 TYPE_1__* smp_error_table ;

const char *
smp_error_desc(int function_result)
{
 int i;

 for (i = 0; i < nitems(smp_error_table); i++){
  if (function_result == smp_error_table[i].function_result)
   return (smp_error_table[i].desc);
 }
 return ("Reserved Function Result");
}
