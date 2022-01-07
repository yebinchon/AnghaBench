
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct parse {scalar_t__ next; scalar_t__ end; scalar_t__ error; TYPE_1__* g; } ;
struct TYPE_15__ {int * multis; } ;
typedef TYPE_2__ cset ;
struct TYPE_14__ {int cflags; int csetsize; } ;


 scalar_t__ CHIN (TYPE_2__*,int) ;
 int CHadd (TYPE_2__*,int) ;
 int CHsub (TYPE_2__*,char) ;
 scalar_t__ EAT (char) ;
 int EMIT (int ,int ) ;
 scalar_t__ MORE () ;
 int MUSTEAT (char,int ) ;
 int NEXTn (int) ;
 int OANYOF ;
 int OBOW ;
 int OEOW ;
 char PEEK () ;
 int REG_EBRACK ;
 int REG_ICASE ;
 int REG_NEWLINE ;
 int SEETWO (char,char) ;
 TYPE_2__* allocset (struct parse*) ;
 int assert (int ) ;
 int firstch (struct parse*,TYPE_2__*) ;
 int freeset (struct parse*,TYPE_2__*) ;
 int freezeset (struct parse*,TYPE_2__*) ;
 scalar_t__ isalpha (int) ;
 int mccase (struct parse*,TYPE_2__*) ;
 int mcinvert (struct parse*,TYPE_2__*) ;
 int nch (struct parse*,TYPE_2__*) ;
 int ordinary (struct parse*,int ) ;
 int othercase (int) ;
 int p_b_term (struct parse*,TYPE_2__*) ;
 scalar_t__ strncmp (scalar_t__,char*,int) ;

__attribute__((used)) static void
p_bracket(struct parse *p)
{
 cset *cs;
 int invert = 0;


 if (p->next + 5 < p->end && strncmp(p->next, "[:<:]]", 6) == 0) {
  EMIT(OBOW, 0);
  NEXTn(6);
  return;
 }
 if (p->next + 5 < p->end && strncmp(p->next, "[:>:]]", 6) == 0) {
  EMIT(OEOW, 0);
  NEXTn(6);
  return;
 }

 if ((cs = allocset(p)) == ((void*)0)) {

  return;
 }

 if (EAT('^'))
  invert++;
 if (EAT(']'))
  CHadd(cs, ']');
 else if (EAT('-'))
  CHadd(cs, '-');
 while (MORE() && PEEK() != ']' && !SEETWO('-', ']'))
  p_b_term(p, cs);
 if (EAT('-'))
  CHadd(cs, '-');
 MUSTEAT(']', REG_EBRACK);

 if (p->error != 0) {
  freeset(p, cs);
  return;
 }

 if (p->g->cflags&REG_ICASE) {
  int i;
  int ci;

  for (i = p->g->csetsize - 1; i >= 0; i--)
   if (CHIN(cs, i) && isalpha(i)) {
    ci = othercase(i);
    if (ci != i)
     CHadd(cs, ci);
   }
  if (cs->multis != ((void*)0))
   mccase(p, cs);
 }
 if (invert) {
  int i;

  for (i = p->g->csetsize - 1; i >= 0; i--)
   if (CHIN(cs, i))
    CHsub(cs, i);
   else
    CHadd(cs, i);
  if (p->g->cflags&REG_NEWLINE)
   CHsub(cs, '\n');
  if (cs->multis != ((void*)0))
   mcinvert(p, cs);
 }

 assert(cs->multis == ((void*)0));

 if (nch(p, cs) == 1) {
  ordinary(p, firstch(p, cs));
  freeset(p, cs);
 } else
  EMIT(OANYOF, freezeset(p, cs));
}
