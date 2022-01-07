
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct re_guts {int nstates; int * strip; } ;
struct parse {int slen; int * strip; } ;
typedef int sop ;


 int REG_ESPACE ;
 int SETERROR (int ) ;
 int SIZE_MAX ;
 scalar_t__ realloc (char*,int) ;

__attribute__((used)) static void
stripsnug(struct parse *p, struct re_guts *g)
{
 g->nstates = p->slen;
 if ((uintptr_t)p->slen > SIZE_MAX / sizeof(sop)) {
  g->strip = p->strip;
  SETERROR(REG_ESPACE);
  return;
 }

 g->strip = (sop *)realloc((char *)p->strip, p->slen * sizeof(sop));
 if (g->strip == ((void*)0)) {
  SETERROR(REG_ESPACE);
  g->strip = p->strip;
 }
}
