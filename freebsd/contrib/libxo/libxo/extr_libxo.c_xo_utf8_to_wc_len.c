
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ssize_t ;



__attribute__((used)) static inline ssize_t
xo_utf8_to_wc_len (const char *buf)
{
    uint8_t bval = (uint8_t) *buf;
    ssize_t len;

    if ((bval & 0x80) == 0x0)
 len = 1;
    else if ((bval & 0xe0) == 0xc0)
 len = 2;
    else if ((bval & 0xf0) == 0xe0)
 len = 3;
    else if ((bval & 0xf8) == 0xf0)
 len = 4;
    else
 len = -1;

    return len;
}
