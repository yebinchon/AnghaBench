
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_short ;
typedef size_t u_int ;
struct TYPE_3__ {int fmt; int varname; } ;


 size_t COUNTOF (TYPE_1__*) ;
 int PADDING ;
 TYPE_1__* cookedvars ;
 int strcmp (char const*,int ) ;

u_short
varfmt(const char * varname)
{
 u_int n;

 for (n = 0; n < COUNTOF(cookedvars); n++)
  if (!strcmp(varname, cookedvars[n].varname))
   return cookedvars[n].fmt;

 return PADDING;
}
