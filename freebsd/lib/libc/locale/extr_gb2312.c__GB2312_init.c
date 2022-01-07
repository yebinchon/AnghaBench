
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlocale_ctype {int __mb_cur_max; int __mb_sb_limit; int __wcsnrtombs; int __mbsnrtowcs; int __mbsinit; int __wcrtomb; int __mbrtowc; int * runes; } ;
typedef int _RuneLocale ;


 int _GB2312_mbrtowc ;
 int _GB2312_mbsinit ;
 int _GB2312_mbsnrtowcs ;
 int _GB2312_wcrtomb ;
 int _GB2312_wcsnrtombs ;

int
_GB2312_init(struct xlocale_ctype *l, _RuneLocale *rl)
{

 l->runes = rl;
 l->__mbrtowc = _GB2312_mbrtowc;
 l->__wcrtomb = _GB2312_wcrtomb;
 l->__mbsinit = _GB2312_mbsinit;
 l->__mbsnrtowcs = _GB2312_mbsnrtowcs;
 l->__wcsnrtombs = _GB2312_wcsnrtombs;
 l->__mb_cur_max = 2;
 l->__mb_sb_limit = 128;
 return (0);
}
