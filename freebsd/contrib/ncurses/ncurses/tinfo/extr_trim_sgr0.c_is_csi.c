
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CSI ;
 char const ESC ;
 char const L_BRACK ;
 scalar_t__ UChar (char const) ;

__attribute__((used)) static int
is_csi(const char *s)
{
    int result = 0;
    if (s != 0) {
 if (UChar(s[0]) == CSI)
     result = 1;
 else if (s[0] == ESC && s[1] == L_BRACK)
     result = 2;
    }
    return result;
}
