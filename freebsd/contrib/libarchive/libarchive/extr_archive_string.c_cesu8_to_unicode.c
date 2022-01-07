
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ IS_HIGH_SURROGATE_LA (int ) ;
 scalar_t__ IS_LOW_SURROGATE_LA (int ) ;
 int UNICODE_R_CHAR ;
 int _utf8_to_unicode (int *,char const*,size_t) ;
 int combine_surrogate_pair (int ,int ) ;

__attribute__((used)) static int
cesu8_to_unicode(uint32_t *pwc, const char *s, size_t n)
{
 uint32_t wc = 0;
 int cnt;

 cnt = _utf8_to_unicode(&wc, s, n);
 if (cnt == 3 && IS_HIGH_SURROGATE_LA(wc)) {
  uint32_t wc2 = 0;
  if (n - 3 < 3) {

   goto invalid_sequence;
  }
  cnt = _utf8_to_unicode(&wc2, s+3, n-3);
  if (cnt != 3 || !IS_LOW_SURROGATE_LA(wc2)) {

   goto invalid_sequence;
  }
  wc = combine_surrogate_pair(wc, wc2);
  cnt = 6;
 } else if (cnt == 3 && IS_LOW_SURROGATE_LA(wc)) {

  goto invalid_sequence;
 }
 *pwc = wc;
 return (cnt);
invalid_sequence:
 *pwc = UNICODE_R_CHAR;
 if (cnt > 0)
  cnt *= -1;
 return (cnt);
}
