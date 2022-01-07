
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef int wchar_t ;
struct parse {char* next; } ;
struct cname {int code; int * name; } ;
typedef int mbstate_t ;
typedef int mbs ;


 scalar_t__ MORE () ;
 int NEXT () ;
 int REG_EBRACK ;
 int REG_ECOLLATE ;
 int REG_ILLSEQ ;
 int SEETWO (int ,char) ;
 int SETERROR (int ) ;
 struct cname* cnames ;
 size_t mbrtowc (int *,char const*,size_t,int *) ;
 int memset (int *,int ,int) ;
 size_t strlen (int *) ;
 scalar_t__ strncmp (int *,char const*,size_t) ;

__attribute__((used)) static wint_t
p_b_coll_elem(struct parse *p,
 wint_t endc)
{
 const char *sp = p->next;
 struct cname *cp;
 mbstate_t mbs;
 wchar_t wc;
 size_t clen, len;

 while (MORE() && !SEETWO(endc, ']'))
  NEXT();
 if (!MORE()) {
  SETERROR(REG_EBRACK);
  return(0);
 }
 len = p->next - sp;
 for (cp = cnames; cp->name != ((void*)0); cp++)
  if (strncmp(cp->name, sp, len) == 0 && strlen(cp->name) == len)
   return(cp->code);
 memset(&mbs, 0, sizeof(mbs));
 if ((clen = mbrtowc(&wc, sp, len, &mbs)) == len)
  return (wc);
 else if (clen == (size_t)-1 || clen == (size_t)-2)
  SETERROR(REG_ILLSEQ);
 else
  SETERROR(REG_ECOLLATE);
 return(0);
}
