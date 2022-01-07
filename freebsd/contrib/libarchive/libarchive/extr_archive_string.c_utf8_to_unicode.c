
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ IS_SURROGATE_PAIR_LA (int ) ;
 int _utf8_to_unicode (int *,char const*,size_t) ;

__attribute__((used)) static int
utf8_to_unicode(uint32_t *pwc, const char *s, size_t n)
{
 int cnt;

 cnt = _utf8_to_unicode(pwc, s, n);

 if (cnt == 3 && IS_SURROGATE_PAIR_LA(*pwc))
  return (-3);
 return (cnt);
}
