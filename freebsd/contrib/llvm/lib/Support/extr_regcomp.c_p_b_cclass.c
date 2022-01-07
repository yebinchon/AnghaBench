
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uch ;
struct parse {char* next; } ;
struct cclass {char* name; char* chars; char* multis; } ;
typedef int cset ;


 int CHadd (int *,char) ;
 int MCadd (struct parse*,int *,char const*) ;
 scalar_t__ MORE () ;
 int NEXT () ;
 scalar_t__ PEEK () ;
 int REG_ECTYPE ;
 int SETERROR (int ) ;
 struct cclass* cclasses ;
 scalar_t__ isalpha (int ) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncmp (char*,char*,size_t) ;

__attribute__((used)) static void
p_b_cclass(struct parse *p, cset *cs)
{
 char *sp = p->next;
 struct cclass *cp;
 size_t len;
 const char *u;
 char c;

 while (MORE() && isalpha((uch)PEEK()))
  NEXT();
 len = p->next - sp;
 for (cp = cclasses; cp->name != ((void*)0); cp++)
  if (strncmp(cp->name, sp, len) == 0 && cp->name[len] == '\0')
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
