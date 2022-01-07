
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef int wchar_t ;
typedef int mbstate_t ;


 size_t mbrtowc (int *,char const*,size_t,int *) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static __inline size_t
xmbrtowc(wint_t *wi, const char *s, size_t n, mbstate_t *mbs, wint_t dummy)
{
 size_t nr;
 wchar_t wc;

 nr = mbrtowc(&wc, s, n, mbs);
 if (wi != ((void*)0))
  *wi = wc;
 if (nr == 0)
  return (1);
 else if (nr == (size_t)-1 || nr == (size_t)-2) {
  memset(mbs, 0, sizeof(*mbs));
  if (wi != ((void*)0))
   *wi = dummy;
  return (1);
 } else
                return (nr);
}
