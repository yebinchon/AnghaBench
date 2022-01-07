
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {scalar_t__ ssize; int * strip; } ;
typedef scalar_t__ sopno ;
typedef int sop ;


 int REG_ESPACE ;
 int SETERROR (int ) ;
 int * reallocarray (int *,scalar_t__,int) ;

__attribute__((used)) static int
enlarge(struct parse *p, sopno size)
{
 sop *sp;

 if (p->ssize >= size)
  return 1;

 sp = reallocarray(p->strip, size, sizeof(sop));
 if (sp == ((void*)0)) {
  SETERROR(REG_ESPACE);
  return 0;
 }
 p->strip = sp;
 p->ssize = size;
 return 1;
}
