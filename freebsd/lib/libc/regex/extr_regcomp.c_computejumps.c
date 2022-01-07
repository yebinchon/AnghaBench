
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct re_guts {int* charjump; int mlen; scalar_t__* must; } ;
struct parse {scalar_t__ error; } ;


 int CHAR_MAX ;
 size_t CHAR_MIN ;
 int NC_MAX ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static void
computejumps(struct parse *p, struct re_guts *g)
{
 int ch;
 int mindex;


 if (p->error != 0)
  return;

 g->charjump = (int *)malloc((NC_MAX + 1) * sizeof(int));
 if (g->charjump == ((void*)0))
  return;

 g->charjump = &g->charjump[-(CHAR_MIN)];




 for (ch = CHAR_MIN; ch < (CHAR_MAX + 1); ch++)
  g->charjump[ch] = g->mlen;






 for (mindex = 0; mindex < g->mlen; mindex++)
  g->charjump[(int)g->must[mindex]] = g->mlen - mindex - 1;
}
