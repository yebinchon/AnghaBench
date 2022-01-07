
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int ssize; int * strip; } ;
typedef int sopno ;
typedef int sop ;


 int REG_ESPACE ;
 int SETERROR (int ) ;
 int SIZE_MAX ;
 scalar_t__ realloc (int *,int) ;

__attribute__((used)) static void
enlarge(struct parse *p, sopno size)
{
 sop *sp;

 if (p->ssize >= size)
  return;

 if ((uintptr_t)size > SIZE_MAX / sizeof(sop)) {
  SETERROR(REG_ESPACE);
  return;
 }

 sp = (sop *)realloc(p->strip, size*sizeof(sop));
 if (sp == ((void*)0)) {
  SETERROR(REG_ESPACE);
  return;
 }
 p->strip = sp;
 p->ssize = size;
}
