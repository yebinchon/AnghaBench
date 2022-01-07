
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef scalar_t__ wchar_t ;
typedef int ssize_t ;


 scalar_t__ iswcntrl (scalar_t__) ;
 scalar_t__ iswprint (int ) ;
 scalar_t__ xo_utf8_char (char const*,int) ;
 int xo_utf8_to_wc_len (char const*) ;
 int xo_wcwidth (scalar_t__) ;

__attribute__((used)) static ssize_t
xo_count_utf8_cols (const char *str, ssize_t len)
{
    ssize_t tlen;
    wchar_t wc;
    ssize_t cols = 0;
    const char *ep = str + len;

    while (str < ep) {
 tlen = xo_utf8_to_wc_len(str);
 if (tlen < 0)
     return cols;

 wc = xo_utf8_char(str, tlen);
 if (wc == (wchar_t) -1)
     return cols;


 if (iswprint((wint_t) wc)) {




     ssize_t width = xo_wcwidth(wc);
     if (width < 0)
  width = iswcntrl(wc) ? 0 : 1;

     cols += width;
 }

 str += tlen;
    }

    return cols;
}
