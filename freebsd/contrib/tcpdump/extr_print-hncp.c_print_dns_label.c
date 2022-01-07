
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef scalar_t__ u_char ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int safeputchar (int *,char) ;
 int safeputs (int *,scalar_t__ const*,scalar_t__) ;

__attribute__((used)) static int
print_dns_label(netdissect_options *ndo,
                const u_char *cp, u_int max_length, int print)
{
    u_int length = 0;
    while (length < max_length) {
        u_int lab_length = cp[length++];
        if (lab_length == 0)
            return (int)length;
        if (length > 1 && print)
            safeputchar(ndo, '.');
        if (length+lab_length > max_length) {
            if (print)
                safeputs(ndo, cp+length, max_length-length);
            break;
        }
        if (print)
            safeputs(ndo, cp+length, lab_length);
        length += lab_length;
    }
    if (print)
        ND_PRINT((ndo, "[|DNS]"));
    return -1;
}
