
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {scalar_t__ ssize; int * stripdata; int * strip; } ;
typedef scalar_t__ sopno ;
typedef int sop ;
typedef int RCHAR_T ;


 scalar_t__ MEMLIMIT ;
 scalar_t__ MEMSIZE (struct parse*) ;
 int REG_ESPACE ;
 int SETERROR (int ) ;
 void* realloc (int *,int) ;

__attribute__((used)) static int
enlarge(struct parse *p, sopno size)
{
 sop *sp;
 RCHAR_T *dp;
 sopno osize;

 if (p->ssize >= size)
  return 1;

 osize = p->ssize;
 p->ssize = size;
 if (MEMSIZE(p) > MEMLIMIT)
  goto oomem;
 sp = realloc(p->strip, p->ssize * sizeof(sop));
 if (sp == ((void*)0))
  goto oomem;
 p->strip = sp;
 dp = realloc(p->stripdata, p->ssize * sizeof(RCHAR_T));
 if (dp == ((void*)0)) {
oomem:
  p->ssize = osize;
  SETERROR(REG_ESPACE);
  return 0;
 }
 p->stripdata = dp;
 return 1;
}
