
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
struct TYPE_5__ {int const* ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;


 scalar_t__ MAX_RST_DATA_LEN ;
 int ND_PRINT (TYPE_1__*) ;
 scalar_t__ ND_TTEST2 (int const,scalar_t__) ;
 int safeputchar (TYPE_1__*,int) ;

__attribute__((used)) static void
print_tcp_rst_data(netdissect_options *ndo,
                   register const u_char *sp, u_int length)
{
        int c;

        ND_PRINT((ndo, ND_TTEST2(*sp, length) ? " [RST" : " [!RST"));
        if (length > MAX_RST_DATA_LEN) {
                length = MAX_RST_DATA_LEN;
                ND_PRINT((ndo, "+"));
        }
        ND_PRINT((ndo, " "));
        while (length-- && sp < ndo->ndo_snapend) {
                c = *sp++;
                safeputchar(ndo, c);
        }
        ND_PRINT((ndo, "]"));
}
