
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 int babel_print_v2 (int *,int const*,int ) ;
 int tstr ;

void
babel_print(netdissect_options *ndo,
            const u_char *cp, u_int length)
{
    ND_PRINT((ndo, "babel"));

    ND_TCHECK2(*cp, 4);

    if(cp[0] != 42) {
        ND_PRINT((ndo, " invalid header"));
        return;
    } else {
        ND_PRINT((ndo, " %d", cp[1]));
    }

    switch(cp[1]) {
    case 2:
        babel_print_v2(ndo, cp, length);
        break;
    default:
        ND_PRINT((ndo, " unknown version"));
        break;
    }

    return;

 trunc:
    ND_PRINT((ndo, " %s", tstr));
    return;
}
