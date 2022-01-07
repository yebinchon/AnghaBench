
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {char* next; } ;
struct cname {char code; int * name; } ;
typedef char RCHAR_T ;


 scalar_t__ MEMCMP (int *,char*,size_t) ;
 scalar_t__ MORE () ;
 int NEXT () ;
 int REG_EBRACK ;
 int REG_ECOLLATE ;
 int SEETWO (int,char) ;
 int SETERROR (int ) ;
 size_t STRLEN (int *) ;
 struct cname* cnames ;

__attribute__((used)) static char
p_b_coll_elem(struct parse *p, int endc)


{
 RCHAR_T *sp = p->next;
 struct cname *cp;
 size_t len;

 while (MORE() && !SEETWO(endc, ']'))
  NEXT();
 if (!MORE()) {
  SETERROR(REG_EBRACK);
  return(0);
 }
 len = p->next - sp;
 for (cp = cnames; cp->name != ((void*)0); cp++)
  if (STRLEN(cp->name) == len && MEMCMP(cp->name, sp, len))
   return(cp->code);
 if (len == 1)
  return(*sp);
 SETERROR(REG_ECOLLATE);
 return(0);
}
