
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlocale_ctype {int __mb_cur_max; int __mb_sb_limit; int * runes; int __wcsnrtombs; int __mbsnrtowcs; int __mbsinit; int __wcrtomb; int __mbrtowc; } ;
typedef int _RuneLocale ;


 int _GBK_mbrtowc ;
 int _GBK_mbsinit ;
 int _GBK_mbsnrtowcs ;
 int _GBK_wcrtomb ;
 int _GBK_wcsnrtombs ;

int
_GBK_init(struct xlocale_ctype *l, _RuneLocale *rl)
{

 l->__mbrtowc = _GBK_mbrtowc;
 l->__wcrtomb = _GBK_wcrtomb;
 l->__mbsinit = _GBK_mbsinit;
 l->__mbsnrtowcs = _GBK_mbsnrtowcs;
 l->__wcsnrtombs = _GBK_wcsnrtombs;
 l->runes = rl;
 l->__mb_cur_max = 2;
 l->__mb_sb_limit = 128;
 return (0);
}
