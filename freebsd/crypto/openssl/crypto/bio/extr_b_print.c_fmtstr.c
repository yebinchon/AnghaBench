
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DP_F_MINUS ;
 int INT_MAX ;
 size_t OPENSSL_strnlen (char const*,size_t) ;
 size_t SIZE_MAX ;
 int doapr_outch (char**,char**,size_t*,size_t*,char) ;

__attribute__((used)) static int
fmtstr(char **sbuffer,
       char **buffer,
       size_t *currlen,
       size_t *maxlen, const char *value, int flags, int min, int max)
{
    int padlen;
    size_t strln;
    int cnt = 0;

    if (value == 0)
        value = "<NULL>";

    strln = OPENSSL_strnlen(value, max < 0 ? SIZE_MAX : (size_t)max);

    padlen = min - strln;
    if (min < 0 || padlen < 0)
        padlen = 0;
    if (max >= 0) {




        if (max < INT_MAX - padlen)
            max += padlen;
        else
            max = INT_MAX;
    }
    if (flags & DP_F_MINUS)
        padlen = -padlen;

    while ((padlen > 0) && (max < 0 || cnt < max)) {
        if (!doapr_outch(sbuffer, buffer, currlen, maxlen, ' '))
            return 0;
        --padlen;
        ++cnt;
    }
    while (strln > 0 && (max < 0 || cnt < max)) {
        if (!doapr_outch(sbuffer, buffer, currlen, maxlen, *value++))
            return 0;
        --strln;
        ++cnt;
    }
    while ((padlen < 0) && (max < 0 || cnt < max)) {
        if (!doapr_outch(sbuffer, buffer, currlen, maxlen, ' '))
            return 0;
        ++padlen;
        ++cnt;
    }
    return 1;
}
