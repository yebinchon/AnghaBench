
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;

__attribute__((used)) static void
print_tcp_fastopen_option(netdissect_options *ndo, register const u_char *cp,
                          u_int datalen, int exp)
{
        u_int i;

        if (exp)
                ND_PRINT((ndo, "tfo"));

        if (datalen == 0) {

                ND_PRINT((ndo, " cookiereq"));
        } else {

                if (datalen % 2 != 0 || datalen < 4 || datalen > 16) {
                        ND_PRINT((ndo, " invalid"));
                } else {
                        ND_PRINT((ndo, " cookie "));
                        for (i = 0; i < datalen; ++i)
                                ND_PRINT((ndo, "%02x", cp[i]));
                }
        }
}
