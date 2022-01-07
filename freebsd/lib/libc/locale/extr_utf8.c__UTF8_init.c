
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlocale_ctype {int __mb_cur_max; int __mb_sb_limit; int * runes; int __wcsnrtombs; int __mbsnrtowcs; int __mbsinit; int __wcrtomb; int __mbrtowc; } ;
typedef int _RuneLocale ;


 int _UTF8_mbrtowc ;
 int _UTF8_mbsinit ;
 int _UTF8_mbsnrtowcs ;
 int _UTF8_wcrtomb ;
 int _UTF8_wcsnrtombs ;

int
_UTF8_init(struct xlocale_ctype *l, _RuneLocale *rl)
{

 l->__mbrtowc = _UTF8_mbrtowc;
 l->__wcrtomb = _UTF8_wcrtomb;
 l->__mbsinit = _UTF8_mbsinit;
 l->__mbsnrtowcs = _UTF8_mbsnrtowcs;
 l->__wcsnrtombs = _UTF8_wcsnrtombs;
 l->runes = rl;
 l->__mb_cur_max = 4;





 l->__mb_sb_limit = 128;

 return (0);
}
