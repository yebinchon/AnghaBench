
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_4__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;
 int ND_PRINT (TYPE_1__*) ;
 int fr_lmi_report_type_ie_values ;
 int tok2str (int ,char*,int const) ;

__attribute__((used)) static int
fr_q933_print_ie_codeset_0_5(netdissect_options *ndo, u_int iecode,
                          u_int ielength, const u_char *p)
{
        u_int dlci;

        switch (iecode) {

        case 131:
        case 128:
            if (ielength < 1) {
                if (!ndo->ndo_vflag) {
                    ND_PRINT((ndo, ", "));
         }
                ND_PRINT((ndo, "Invalid REPORT TYPE IE"));
                return 1;
            }
            if (ndo->ndo_vflag) {
                ND_PRINT((ndo, "%s (%u)",
                       tok2str(fr_lmi_report_type_ie_values,"unknown",p[0]),
                       p[0]));
     }
            return 1;

        case 134:
        case 130:
        case 133:
            if (!ndo->ndo_vflag) {
                ND_PRINT((ndo, ", "));
     }
            if (ielength < 2) {
                ND_PRINT((ndo, "Invalid LINK VERIFY IE"));
                return 1;
            }
            ND_PRINT((ndo, "TX Seq: %3d, RX Seq: %3d", p[0], p[1]));
            return 1;

        case 132:
        case 129:
            if (!ndo->ndo_vflag) {
                ND_PRINT((ndo, ", "));
     }

            if ((ielength < 3) ||
                (p[0] & 0x80) ||
                ((ielength == 3) && !(p[1] & 0x80)) ||
                ((ielength == 4) && ((p[1] & 0x80) || !(p[2] & 0x80))) ||
                ((ielength == 5) && ((p[1] & 0x80) || (p[2] & 0x80) ||
                                   !(p[3] & 0x80))) ||
                (ielength > 5) ||
                !(p[ielength - 1] & 0x80)) {
                ND_PRINT((ndo, "Invalid DLCI in PVC STATUS IE"));
                return 1;
     }

            dlci = ((p[0] & 0x3F) << 4) | ((p[1] & 0x78) >> 3);
            if (ielength == 4) {
                dlci = (dlci << 6) | ((p[2] & 0x7E) >> 1);
     }
            else if (ielength == 5) {
                dlci = (dlci << 13) | (p[2] & 0x7F) | ((p[3] & 0x7E) >> 1);
     }

            ND_PRINT((ndo, "DLCI %u: status %s%s", dlci,
                    p[ielength - 1] & 0x8 ? "New, " : "",
                    p[ielength - 1] & 0x2 ? "Active" : "Inactive"));
            return 1;
 }

        return 0;
}
