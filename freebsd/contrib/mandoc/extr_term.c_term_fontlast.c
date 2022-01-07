
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int fontl; int* fontq; size_t fonti; } ;
typedef enum termfont { ____Placeholder_termfont } termfont ;



void
term_fontlast(struct termp *p)
{
 enum termfont f;

 f = p->fontl;
 p->fontl = p->fontq[p->fonti];
 p->fontq[p->fonti] = f;
}
