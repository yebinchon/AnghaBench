
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct re_guts {int nstates; int * stripdata; int * strip; } ;
struct parse {int slen; int * stripdata; int * strip; } ;
typedef int sop ;
typedef int RCHAR_T ;


 int REG_ESPACE ;
 int SETERROR (int ) ;
 scalar_t__ realloc (char*,int) ;

__attribute__((used)) static void
stripsnug(struct parse *p, struct re_guts *g)
{
 g->nstates = p->slen;
 g->strip = (sop *)realloc((char *)p->strip,
     p->slen * sizeof(sop));
 if (g->strip == ((void*)0)) {
  SETERROR(REG_ESPACE);
  g->strip = p->strip;
 }
 g->stripdata = (RCHAR_T *)realloc((char *)p->stripdata,
     p->slen * sizeof(RCHAR_T));
 if (g->stripdata == ((void*)0)) {
  SETERROR(REG_ESPACE);
  g->stripdata = p->stripdata;
 }
}
