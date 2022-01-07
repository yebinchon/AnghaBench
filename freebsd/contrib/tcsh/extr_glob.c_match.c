
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __Char ;
typedef int Char ;


 char const EOS ;
 int MB_LEN_MAX ;

 int const M_END ;
 int M_MASK ;

 int const M_RNG ;

 size_t One_Char_mbtowc (int *,int const*,int ) ;
 int globcharcoll (int ,int ,int ) ;
 size_t one_mbtowc (int *,char const*,int ) ;
 int samecase (int ) ;

__attribute__((used)) static int
match(const char *name, const Char *pat, const Char *patend, int m_not)
{
    int ok, negate_range;
    const Char *patNext;
    const char *nameNext, *nameStart, *nameEnd;
    Char c;

    patNext = pat;
    nameStart = nameNext = name;
    nameEnd = ((void*)0);

    while (pat < patend || *name) {
 size_t lwk, pwk;
 __Char wc, wk, wc1;

 c = *pat;
 if (*name == EOS)
  nameEnd = name;

 pwk = One_Char_mbtowc(&wc, pat, MB_LEN_MAX);
 lwk = one_mbtowc(&wk, name, MB_LEN_MAX);
 switch (c & M_MASK) {
 case 130:
     while ((*(pat + pwk) & M_MASK) == 130) {
  pat += pwk;
  pwk = One_Char_mbtowc(&wc, pat, MB_LEN_MAX);
     }
     patNext = pat;
     nameNext = name + lwk;
     pat += pwk;
     continue;
 case 129:
     if (*name == EOS)
  break;
     name += lwk;
     pat += pwk;
     continue;
 case 128:
     ok = 0;
     if (*name == EOS)
  break;
     pat += pwk;
     pwk = One_Char_mbtowc(&wc, pat, MB_LEN_MAX);
     name += lwk;
     if ((negate_range = ((*pat & M_MASK) == m_not)) != 0) {
  pat += pwk;
  pwk = One_Char_mbtowc(&wc, pat, MB_LEN_MAX);
     }
     wc1 = wc;
     while ((*pat & M_MASK) != M_END) {
  if ((*pat & M_MASK) == M_RNG) {
      __Char wc2;

      pat += pwk;
      pwk = One_Char_mbtowc(&wc2, pat, MB_LEN_MAX);
      if (globcharcoll(wc1, wk, 0) <= 0 &&
   globcharcoll(wk, wc2, 0) <= 0)
   ok = 1;
  } else if (wc == wk)
      ok = 1;
  pat += pwk;
  wc1 = wc;
  pwk = One_Char_mbtowc(&wc, pat, MB_LEN_MAX);
     }
     pat += pwk;
     pwk = One_Char_mbtowc(&wc, pat, MB_LEN_MAX);
     if (ok == negate_range)
  break;
     continue;
 default:
     if (*name == EOS || samecase(wk) != samecase(wc))
  break;
     name += lwk;
     pat += pwk;
     continue;
 }
 if (nameNext != nameStart
     && (nameEnd == ((void*)0) || nameNext <= nameEnd)) {
     pat = patNext;
     name = nameNext;
     continue;
 }
 return 0;
    }
    return 1;
}
