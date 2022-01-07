
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlocale_ctype {int __mb_cur_max; int __mb_sb_limit; int * runes; int __mbsinit; int __wcsnrtombs; int __mbsnrtowcs; int __wcrtomb; int __mbrtowc; } ;
typedef int _RuneLocale ;


 int _MSKanji_mbrtowc ;
 int _MSKanji_mbsinit ;
 int _MSKanji_mbsnrtowcs ;
 int _MSKanji_wcrtomb ;
 int _MSKanji_wcsnrtombs ;

int
_MSKanji_init(struct xlocale_ctype *l, _RuneLocale *rl)
{

 l->__mbrtowc = _MSKanji_mbrtowc;
 l->__wcrtomb = _MSKanji_wcrtomb;
 l->__mbsnrtowcs = _MSKanji_mbsnrtowcs;
 l->__wcsnrtombs = _MSKanji_wcsnrtombs;
 l->__mbsinit = _MSKanji_mbsinit;
 l->runes = rl;
 l->__mb_cur_max = 2;
 l->__mb_sb_limit = 224;
 return (0);
}
