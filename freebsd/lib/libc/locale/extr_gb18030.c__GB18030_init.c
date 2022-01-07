
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlocale_ctype {int __mb_cur_max; int __mb_sb_limit; int * runes; int __wcsnrtombs; int __mbsnrtowcs; int __mbsinit; int __wcrtomb; int __mbrtowc; } ;
typedef int _RuneLocale ;


 int _GB18030_mbrtowc ;
 int _GB18030_mbsinit ;
 int _GB18030_mbsnrtowcs ;
 int _GB18030_wcrtomb ;
 int _GB18030_wcsnrtombs ;

int
_GB18030_init(struct xlocale_ctype *l, _RuneLocale *rl)
{

 l->__mbrtowc = _GB18030_mbrtowc;
 l->__wcrtomb = _GB18030_wcrtomb;
 l->__mbsinit = _GB18030_mbsinit;
 l->__mbsnrtowcs = _GB18030_mbsnrtowcs;
 l->__wcsnrtombs = _GB18030_wcsnrtombs;
 l->runes = rl;
 l->__mb_cur_max = 4;
 l->__mb_sb_limit = 128;

 return (0);
}
