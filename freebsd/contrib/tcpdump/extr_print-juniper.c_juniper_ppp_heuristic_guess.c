
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int ppp_print (int *,int const*,int ) ;

__attribute__((used)) static int
juniper_ppp_heuristic_guess(netdissect_options *ndo,
                            register const u_char *p, u_int length)
{
    switch(EXTRACT_16BITS(p)) {
    case 139 :
    case 130 :
    case 131 :
    case 132 :
    case 138 :
    case 129 :
    case 133 :
    case 135 :
    case 128 :
    case 140 :
    case 134 :
    case 137 :
    case 136 :
        ppp_print(ndo, p, length);
        break;

    default:
        return 0;
        break;
    }
    return 1;
}
