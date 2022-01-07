
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlocale_ctype {int __mb_cur_max; int __mb_sb_limit; int * runes; int __wcsnrtombs; int __wcrtomb; int __mbsnrtowcs; int __mbsinit; int __mbrtowc; } ;
typedef int _RuneLocale ;


 int _none_mbrtowc ;
 int _none_mbsinit ;
 int _none_mbsnrtowcs ;
 int _none_wcrtomb ;
 int _none_wcsnrtombs ;

int
_none_init(struct xlocale_ctype *l, _RuneLocale *rl)
{

 l->__mbrtowc = _none_mbrtowc;
 l->__mbsinit = _none_mbsinit;
 l->__mbsnrtowcs = _none_mbsnrtowcs;
 l->__wcrtomb = _none_wcrtomb;
 l->__wcsnrtombs = _none_wcsnrtombs;
 l->runes = rl;
 l->__mb_cur_max = 1;
 l->__mb_sb_limit = 256;
 return(0);
}
