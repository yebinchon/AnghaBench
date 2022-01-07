
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parse {int nargs; TYPE_1__* argval; } ;
struct TYPE_2__ {int ival; } ;
typedef int FILE ;


 int AF_INET ;
 int AF_INET6 ;
 int doopeers (int ,int *,int) ;

__attribute__((used)) static void
opeers(
 struct parse *pcmd,
 FILE *fp
 )
{
 int af = 0;

 if (pcmd->nargs == 1) {
  if (pcmd->argval->ival == 6)
   af = AF_INET6;
  else
   af = AF_INET;
 }
 doopeers(0, fp, af);
}
