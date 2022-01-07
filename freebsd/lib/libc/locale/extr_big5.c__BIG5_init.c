
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlocale_ctype {int __mb_cur_max; int __mb_sb_limit; int * runes; int __mbsinit; int __wcsnrtombs; int __mbsnrtowcs; int __wcrtomb; int __mbrtowc; } ;
typedef int _RuneLocale ;


 int _BIG5_mbrtowc ;
 int _BIG5_mbsinit ;
 int _BIG5_mbsnrtowcs ;
 int _BIG5_wcrtomb ;
 int _BIG5_wcsnrtombs ;

int
_BIG5_init(struct xlocale_ctype *l, _RuneLocale *rl)
{

 l->__mbrtowc = _BIG5_mbrtowc;
 l->__wcrtomb = _BIG5_wcrtomb;
 l->__mbsnrtowcs = _BIG5_mbsnrtowcs;
 l->__wcsnrtombs = _BIG5_wcsnrtombs;
 l->__mbsinit = _BIG5_mbsinit;
 l->runes = rl;
 l->__mb_cur_max = 2;
 l->__mb_sb_limit = 128;
 return (0);
}
