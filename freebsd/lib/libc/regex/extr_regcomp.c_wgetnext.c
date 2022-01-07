
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef int wchar_t ;
struct parse {scalar_t__ next; scalar_t__ end; } ;
typedef int mbstate_t ;
typedef int mbs ;


 int REG_ILLSEQ ;
 int SETERROR (int ) ;
 size_t mbrtowc (int *,scalar_t__,scalar_t__,int *) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static wint_t
wgetnext(struct parse *p)
{
 mbstate_t mbs;
 wchar_t wc;
 size_t n;

 memset(&mbs, 0, sizeof(mbs));
 n = mbrtowc(&wc, p->next, p->end - p->next, &mbs);
 if (n == (size_t)-1 || n == (size_t)-2) {
  SETERROR(REG_ILLSEQ);
  return (0);
 }
 if (n == 0)
  n = 1;
 p->next += n;
 return (wc);
}
