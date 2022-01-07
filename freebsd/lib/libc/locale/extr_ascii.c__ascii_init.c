
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlocale_ctype {int __mb_cur_max; int __mb_sb_limit; int * runes; int __wcsnrtombs; int __wcrtomb; int __mbsnrtowcs; int __mbsinit; int __mbrtowc; } ;
typedef int _RuneLocale ;


 int _ascii_mbrtowc ;
 int _ascii_mbsinit ;
 int _ascii_mbsnrtowcs ;
 int _ascii_wcrtomb ;
 int _ascii_wcsnrtombs ;

int
_ascii_init(struct xlocale_ctype *l,_RuneLocale *rl)
{

 l->__mbrtowc = _ascii_mbrtowc;
 l->__mbsinit = _ascii_mbsinit;
 l->__mbsnrtowcs = _ascii_mbsnrtowcs;
 l->__wcrtomb = _ascii_wcrtomb;
 l->__wcsnrtombs = _ascii_wcsnrtombs;
 l->runes = rl;
 l->__mb_cur_max = 1;
 l->__mb_sb_limit = 128;
 return(0);
}
