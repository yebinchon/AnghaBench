
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double* out; } ;


 TYPE_1__* tests ;

__attribute__((used)) static float
get_output(int testindex, int rmodeindex, int negative)
{
 double out;

 if (negative) {
  if (rmodeindex == 1)
   rmodeindex = 2;
  else if (rmodeindex == 2)
   rmodeindex = 1;
 }
 if (rmodeindex == 3)
  rmodeindex = 1;
 out = tests[testindex].out[rmodeindex];
 return (negative ? -out : out);
}
