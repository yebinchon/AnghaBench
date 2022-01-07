
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int (* setwidth ) (struct termp*,int,int) ;} ;
struct roffsu {int dummy; } ;


 int SCALE_MAX ;
 int * a2roffsu (char const*,struct roffsu*,int ) ;
 int stub1 (struct termp*,int,int) ;
 int term_hspan (struct termp*,struct roffsu*) ;

void
term_setwidth(struct termp *p, const char *wstr)
{
 struct roffsu su;
 int iop, width;

 iop = 0;
 width = 0;
 if (((void*)0) != wstr) {
  switch (*wstr) {
  case '+':
   iop = 1;
   wstr++;
   break;
  case '-':
   iop = -1;
   wstr++;
   break;
  default:
   break;
  }
  if (a2roffsu(wstr, &su, SCALE_MAX) != ((void*)0))
   width = term_hspan(p, &su);
  else
   iop = 0;
 }
 (*p->setwidth)(p, iop, width);
}
