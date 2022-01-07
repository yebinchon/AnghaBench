
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {scalar_t__** t_dcom; } ;
typedef scalar_t__ Char ;


 scalar_t__** Dfix2 (scalar_t__**) ;
 int QUOTES ;
 int _DOL ;
 int blkfree (scalar_t__**) ;
 scalar_t__ cmap (scalar_t__,int) ;
 scalar_t__ noexec ;

void
Dfix(struct command *t)
{
    Char **pp;
    Char *p;

    if (noexec)
 return;

    for (pp = t->t_dcom; (p = *pp++) != ((void*)0);) {
 for (; *p; p++) {
     if (cmap(*p, _DOL | QUOTES)) {
  Char **expanded;

  expanded = Dfix2(t->t_dcom);
  blkfree(t->t_dcom);
  t->t_dcom = expanded;
  return;
     }
 }
    }
}
