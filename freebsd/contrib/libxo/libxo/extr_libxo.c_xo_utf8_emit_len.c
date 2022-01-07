
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int ssize_t ;



__attribute__((used)) static ssize_t
xo_utf8_emit_len (wchar_t wc)
{
    ssize_t len;

    if ((wc & ((1 << 7) - 1)) == wc)
 len = 1;
    else if ((wc & ((1 << 11) - 1)) == wc)
 len = 2;
    else if ((wc & ((1 << 16) - 1)) == wc)
 len = 3;
    else if ((wc & ((1 << 21) - 1)) == wc)
 len = 4;
    else
 len = -1;

    return len;
}
