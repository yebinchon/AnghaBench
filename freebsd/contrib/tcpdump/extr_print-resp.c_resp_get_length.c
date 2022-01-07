
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
typedef int netdissect_options ;


 int INT_MAX ;
 int ND_TCHECK (char const) ;

__attribute__((used)) static int
resp_get_length(netdissect_options *ndo, register const u_char *bp, int len, const u_char **endp)
{
    int result;
    u_char c;
    int saw_digit;
    int neg;
    int too_large;

    if (len == 0)
        goto trunc;
    ND_TCHECK(*bp);
    too_large = 0;
    neg = 0;
    if (*bp == '-') {
        neg = 1;
        bp++;
        len--;
    }
    result = 0;
    saw_digit = 0;

    for (;;) {
        if (len == 0)
            goto trunc;
        ND_TCHECK(*bp);
        c = *bp;
        if (!(c >= '0' && c <= '9')) {
            if (!saw_digit) {
                bp++;
                goto invalid;
            }
            break;
        }
        c -= '0';
        if (result > (INT_MAX / 10)) {

            too_large = 1;
        } else {
            result *= 10;
            if (result == ((INT_MAX / 10) * 10) && c > (INT_MAX % 10)) {

                too_large = 1;
            } else
                result += c;
        }
        bp++;
        len--;
        saw_digit = 1;
    }





    if (*bp != '\r') {
        bp++;
        goto invalid;
    }
    bp++;
    len--;
    if (len == 0)
        goto trunc;
    ND_TCHECK(*bp);
    if (*bp != '\n') {
        bp++;
        goto invalid;
    }
    bp++;
    len--;
    *endp = bp;
    if (neg) {

        if (too_large || result != 1)
            return (-4);
        result = -1;
    }
    return (too_large ? -3 : result);

trunc:
    *endp = bp;
    return (-2);

invalid:
    *endp = bp;
    return (-5);
}
