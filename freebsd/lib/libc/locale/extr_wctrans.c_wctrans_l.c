
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wctrans_t ;
typedef int locale_t ;


 int EINVAL ;
 scalar_t__ _WCT_ERROR ;
 scalar_t__ _WCT_TOLOWER ;
 scalar_t__ _WCT_TOUPPER ;
 int errno ;
 scalar_t__ strcmp (char const*,char const*) ;

wctrans_t
wctrans_l(const char *charclass, locale_t locale)
{
 struct {
  const char *name;
  wctrans_t trans;
 } ccls[] = {
  { "tolower", _WCT_TOLOWER },
  { "toupper", _WCT_TOUPPER },
  { ((void*)0), _WCT_ERROR },
 };
 int i;

 i = 0;
 while (ccls[i].name != ((void*)0) && strcmp(ccls[i].name, charclass) != 0)
  i++;

 if (ccls[i].trans == _WCT_ERROR)
  errno = EINVAL;
 return (ccls[i].trans);
}
