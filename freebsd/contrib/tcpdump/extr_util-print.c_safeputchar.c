
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 scalar_t__ ND_ISPRINT (int const) ;
 int ND_PRINT (int *) ;

void
safeputchar(netdissect_options *ndo,
            const u_char c)
{
 ND_PRINT((ndo, (c < 0x80 && ND_ISPRINT(c)) ? "%c" : "\\0x%02x", c));
}
