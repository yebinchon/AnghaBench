
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int * next; } ;
struct cclass {char* chars; char* multis; int * name; } ;
typedef int cset ;
typedef int RCHAR_T ;


 int CHadd (int *,char) ;
 int MCadd (struct parse*,int *,char const*) ;
 int MEMCMP (int *,int *,size_t) ;
 scalar_t__ MORE () ;
 int NEXT () ;
 int PEEK () ;
 int REG_ECTYPE ;
 int SETERROR (int ) ;
 size_t STRLEN (int *) ;
 struct cclass* cclasses ;
 scalar_t__ isalpha (int ) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
p_b_cclass(struct parse *p, cset *cs)
{
 RCHAR_T *sp = p->next;
 struct cclass *cp;
 size_t len;
 const char *u;
 char c;

 while (MORE() && isalpha(PEEK()))
  NEXT();
 len = p->next - sp;
 for (cp = cclasses; cp->name != ((void*)0); cp++)
  if (STRLEN(cp->name) == len && !MEMCMP(cp->name, sp, len))
   break;
 if (cp->name == ((void*)0)) {

  SETERROR(REG_ECTYPE);
  return;
 }

 u = cp->chars;
 while ((c = *u++) != '\0')
  CHadd(cs, c);
 for (u = cp->multis; *u != '\0'; u += strlen(u) + 1)
  MCadd(p, cs, u);
}
