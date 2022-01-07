
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct icode {int dummy; } ;
struct block {scalar_t__ longjf; scalar_t__ longjt; int stmts; } ;


 struct block* JF (struct block*) ;
 struct block* JT (struct block*) ;
 int Mark (struct icode*,struct block*) ;
 scalar_t__ isMarked (struct icode*,struct block*) ;
 scalar_t__ slength (int ) ;

__attribute__((used)) static u_int
count_stmts(struct icode *ic, struct block *p)
{
 u_int n;

 if (p == 0 || isMarked(ic, p))
  return 0;
 Mark(ic, p);
 n = count_stmts(ic, JT(p)) + count_stmts(ic, JF(p));
 return slength(p->stmts) + n + 1 + p->longjt + p->longjf;
}
