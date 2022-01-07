
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int anchor; int use; scalar_t__ restr; } ;
typedef TYPE_1__ fa ;


 int MAXLIN ;
 int NFA ;
 scalar_t__ compile_time ;
 TYPE_1__** fatab ;
 int freefa (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 int maxsetvec ;
 TYPE_1__* mkdfa (char const*,int) ;
 int nfatab ;
 int overflo (char*) ;
 int* setvec ;
 scalar_t__ strcmp (char const*,char const*) ;
 int* tmpset ;

fa *makedfa(const char *s, int anchor)
{
 int i, use, nuse;
 fa *pfa;
 static int now = 1;

 if (setvec == ((void*)0)) {
  maxsetvec = MAXLIN;
  setvec = (int *) malloc(maxsetvec * sizeof(int));
  tmpset = (int *) malloc(maxsetvec * sizeof(int));
  if (setvec == ((void*)0) || tmpset == ((void*)0))
   overflo("out of space initializing makedfa");
 }

 if (compile_time)
  return mkdfa(s, anchor);
 for (i = 0; i < nfatab; i++)
  if (fatab[i]->anchor == anchor
    && strcmp((const char *) fatab[i]->restr, s) == 0) {
   fatab[i]->use = now++;
   return fatab[i];
  }
 pfa = mkdfa(s, anchor);
 if (nfatab < NFA) {
  fatab[nfatab] = pfa;
  fatab[nfatab]->use = now++;
  nfatab++;
  return pfa;
 }
 use = fatab[0]->use;
 nuse = 0;
 for (i = 1; i < nfatab; i++)
  if (fatab[i]->use < use) {
   use = fatab[i]->use;
   nuse = i;
  }
 freefa(fatab[nuse]);
 fatab[nuse] = pfa;
 pfa->use = now++;
 return pfa;
}
