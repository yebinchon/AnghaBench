
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlocale_ctype {int __mb_cur_max; int __mb_sb_limit; int * runes; int __mbsinit; int __wcsnrtombs; int __mbsnrtowcs; int __wcrtomb; int __mbrtowc; } ;
typedef int _RuneLocale ;


 int _EUC_CN_mbrtowc ;
 int _EUC_CN_mbsnrtowcs ;
 int _EUC_CN_wcrtomb ;
 int _EUC_CN_wcsnrtombs ;
 int _EUC_mbsinit ;

int
_EUC_CN_init(struct xlocale_ctype *l, _RuneLocale *rl)
{
 l->__mbrtowc = _EUC_CN_mbrtowc;
 l->__wcrtomb = _EUC_CN_wcrtomb;
 l->__mbsnrtowcs = _EUC_CN_mbsnrtowcs;
 l->__wcsnrtombs = _EUC_CN_wcsnrtombs;
 l->__mbsinit = _EUC_mbsinit;

 l->runes = rl;
 l->__mb_cur_max = 4;
 l->__mb_sb_limit = 128;
 return (0);
}
