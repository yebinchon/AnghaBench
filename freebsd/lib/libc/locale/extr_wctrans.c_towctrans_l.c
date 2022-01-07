
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef int wctrans_t ;
typedef int locale_t ;


 int EINVAL ;



 int errno ;
 int towlower_l (int ,int ) ;
 int towupper_l (int ,int ) ;

wint_t
towctrans_l(wint_t wc, wctrans_t desc, locale_t locale)
{
 switch (desc) {
 case 129:
  wc = towlower_l(wc, locale);
  break;
 case 128:
  wc = towupper_l(wc, locale);
  break;
 case 130:
 default:
  errno = EINVAL;
  break;
 }

 return (wc);
}
