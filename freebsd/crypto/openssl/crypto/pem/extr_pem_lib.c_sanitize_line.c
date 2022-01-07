
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PEM_FLAG_EAY_COMPATIBLE ;
 unsigned int PEM_FLAG_ONLY_B64 ;
 int ossl_isbase64 (char) ;
 scalar_t__ ossl_iscntrl (char) ;

__attribute__((used)) static int sanitize_line(char *linebuf, int len, unsigned int flags)
{
    int i;

    if (flags & PEM_FLAG_EAY_COMPATIBLE) {

        while ((len >= 0) && (linebuf[len] <= ' '))
            len--;

        len++;
    } else if (flags & PEM_FLAG_ONLY_B64) {
        for (i = 0; i < len; ++i) {
            if (!ossl_isbase64(linebuf[i]) || linebuf[i] == '\n'
                || linebuf[i] == '\r')
                break;
        }
        len = i;
    } else {


        for (i = 0; i < len; ++i) {
            if (linebuf[i] == '\n' || linebuf[i] == '\r')
                break;
            if (ossl_iscntrl(linebuf[i]))
                linebuf[i] = ' ';
        }
        len = i;
    }

    linebuf[len++] = '\n';
    linebuf[len] = '\0';
    return len;
}
