
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_7__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int const LACP_VERSION ;
 int const MARKER_VERSION ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (int const) ;



 int print_unknown_data (TYPE_1__*,int const*,char*,int) ;
 int slow_marker_lacp_print (TYPE_1__*,int const*,int,int) ;
 int slow_oam_print (TYPE_1__*,int const*,int) ;
 int slow_proto_values ;
 int tok2str (int ,char*,int) ;

void
slow_print(netdissect_options *ndo,
           register const u_char *pptr, register u_int len)
{
    int print_version;
    u_int subtype;

    if (len < 1)
        goto tooshort;
    ND_TCHECK(*pptr);
    subtype = *pptr;




    switch (subtype) {
    case 130:
        if (len < 2)
            goto tooshort;
        ND_TCHECK(*(pptr+1));
        if (*(pptr+1) != LACP_VERSION) {
            ND_PRINT((ndo, "LACP version %u packet not supported", *(pptr+1)));
            return;
        }
        print_version = 1;
        break;

    case 129:
        if (len < 2)
            goto tooshort;
        ND_TCHECK(*(pptr+1));
        if (*(pptr+1) != MARKER_VERSION) {
            ND_PRINT((ndo, "MARKER version %u packet not supported", *(pptr+1)));
            return;
        }
        print_version = 1;
        break;

    case 128:
        print_version = 0;
        break;

    default:

        print_version = -1;
        break;
    }

    if (print_version == 1) {
        ND_PRINT((ndo, "%sv%u, length %u",
               tok2str(slow_proto_values, "unknown (%u)", subtype),
               *(pptr+1),
               len));
    } else {

        ND_PRINT((ndo, "%s, length %u",
               tok2str(slow_proto_values, "unknown (%u)", subtype),
               len));
    }


    if (print_version == -1) {
        print_unknown_data(ndo, pptr, "\n\t", len);
        return;
    }

    if (!ndo->ndo_vflag)
        return;

    switch (subtype) {
    default:
        break;

    case 128:

        len -= 1;
        pptr += 1;
        slow_oam_print(ndo, pptr, len);
        break;

    case 130:
    case 129:

        len -= 2;
        pptr += 2;
        slow_marker_lacp_print(ndo, pptr, len, subtype);
        break;
    }
    return;

tooshort:
    if (!ndo->ndo_vflag)
        ND_PRINT((ndo, " (packet is too short)"));
    else
        ND_PRINT((ndo, "\n\t\t packet is too short"));
    return;

trunc:
    if (!ndo->ndo_vflag)
        ND_PRINT((ndo, " (packet exceeded snapshot)"));
    else
        ND_PRINT((ndo, "\n\t\t packet exceeded snapshot"));
}
