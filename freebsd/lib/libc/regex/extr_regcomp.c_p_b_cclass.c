
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wctype_t ;
typedef int uch ;
struct parse {char* next; } ;
typedef int cset ;
typedef int clname ;


 int CHaddtype (struct parse*,int *,int ) ;
 scalar_t__ MORE () ;
 int NEXT () ;
 scalar_t__ PEEK () ;
 int REG_ECTYPE ;
 int SETERROR (int ) ;
 scalar_t__ isalpha (int ) ;
 int memcpy (char*,char const*,size_t) ;
 int wctype (char*) ;

__attribute__((used)) static void
p_b_cclass(struct parse *p, cset *cs)
{
 const char *sp = p->next;
 size_t len;
 wctype_t wct;
 char clname[16];

 while (MORE() && isalpha((uch)PEEK()))
  NEXT();
 len = p->next - sp;
 if (len >= sizeof(clname) - 1) {
  SETERROR(REG_ECTYPE);
  return;
 }
 memcpy(clname, sp, len);
 clname[len] = '\0';
 if ((wct = wctype(clname)) == 0) {
  SETERROR(REG_ECTYPE);
  return;
 }
 CHaddtype(p, cs, wct);
}
