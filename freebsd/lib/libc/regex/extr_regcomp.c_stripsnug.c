
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct re_guts {int * strip; int nstates; } ;
struct parse {int * strip; int slen; } ;
typedef int sop ;


 int REG_ESPACE ;
 int SETERROR (int ) ;
 int * reallocarray (char*,int ,int) ;

__attribute__((used)) static void
stripsnug(struct parse *p, struct re_guts *g)
{
 g->nstates = p->slen;
 g->strip = reallocarray((char *)p->strip, p->slen, sizeof(sop));
 if (g->strip == ((void*)0)) {
  SETERROR(REG_ESPACE);
  g->strip = p->strip;
 }
}
