
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct re_guts {int mlen; int* matchjump; scalar_t__* must; } ;
struct parse {scalar_t__ error; } ;


 void* MIN (int,int) ;
 int free (int*) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static void
computematchjumps(struct parse *p, struct re_guts *g)
{
 int mindex;
 int suffix;
 int ssuffix;
 int* pmatches;





 if (p->error != 0)
  return;

 pmatches = (int*) malloc(g->mlen * sizeof(int));
 if (pmatches == ((void*)0)) {
  g->matchjump = ((void*)0);
  return;
 }

 g->matchjump = (int*) malloc(g->mlen * sizeof(int));
 if (g->matchjump == ((void*)0)) {
  free(pmatches);
  return;
 }


 for (mindex = 0; mindex < g->mlen; mindex++)
  g->matchjump[mindex] = 2*g->mlen - mindex - 1;


 for (mindex = g->mlen - 1, suffix = g->mlen; mindex >= 0;
     mindex--, suffix--) {
  pmatches[mindex] = suffix;







  while (suffix < g->mlen
      && g->must[mindex] != g->must[suffix]) {
   g->matchjump[suffix] = MIN(g->matchjump[suffix],
       g->mlen - mindex - 1);
   suffix = pmatches[suffix];
  }
 }





 for (mindex = 0; mindex <= suffix; mindex++)
  g->matchjump[mindex] = MIN(g->matchjump[mindex],
      g->mlen + suffix - mindex);

        ssuffix = pmatches[suffix];
        while (suffix < g->mlen) {
                while (suffix <= ssuffix && suffix < g->mlen) {
                        g->matchjump[suffix] = MIN(g->matchjump[suffix],
       g->mlen + ssuffix - suffix);
                        suffix++;
                }
  if (suffix < g->mlen)
                 ssuffix = pmatches[ssuffix];
        }

 free(pmatches);
}
