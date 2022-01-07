
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u_int ;
typedef char u_char ;
struct TYPE_6__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (char const,int) ;
 int SYSLOG_FACILITY_MASK ;
 int SYSLOG_MAX_DIGITS ;
 int SYSLOG_SEVERITY_MASK ;
 int print_unknown_data (TYPE_1__*,char const*,char*,int) ;
 int safeputchar (TYPE_1__*,char const) ;
 int syslog_facility_values ;
 int syslog_severity_values ;
 int tok2str (int ,char*,int) ;
 int tstr ;

void
syslog_print(netdissect_options *ndo,
             register const u_char *pptr, register u_int len)
{
    uint16_t msg_off = 0;
    uint16_t pri = 0;
    uint16_t facility,severity;







    ND_TCHECK2(*pptr, 1);
    if (*(pptr+msg_off) == '<') {
        msg_off++;
        ND_TCHECK2(*(pptr + msg_off), 1);
        while ( *(pptr+msg_off) >= '0' &&
                *(pptr+msg_off) <= '9' &&
                msg_off <= SYSLOG_MAX_DIGITS) {
            pri = pri * 10 + (*(pptr+msg_off) - '0');
            msg_off++;
            ND_TCHECK2(*(pptr + msg_off), 1);
        }
        if (*(pptr+msg_off) != '>') {
            ND_PRINT((ndo, "%s", tstr));
            return;
        }
        msg_off++;
    } else {
        ND_PRINT((ndo, "%s", tstr));
        return;
    }

    facility = (pri & SYSLOG_FACILITY_MASK) >> 3;
    severity = pri & SYSLOG_SEVERITY_MASK;

    if (ndo->ndo_vflag < 1 )
    {
        ND_PRINT((ndo, "SYSLOG %s.%s, length: %u",
               tok2str(syslog_facility_values, "unknown (%u)", facility),
               tok2str(syslog_severity_values, "unknown (%u)", severity),
               len));
        return;
    }

    ND_PRINT((ndo, "SYSLOG, length: %u\n\tFacility %s (%u), Severity %s (%u)\n\tMsg: ",
           len,
           tok2str(syslog_facility_values, "unknown (%u)", facility),
           facility,
           tok2str(syslog_severity_values, "unknown (%u)", severity),
           severity));


    for (; msg_off < len; msg_off++) {
        ND_TCHECK2(*(pptr + msg_off), 1);
        safeputchar(ndo, *(pptr + msg_off));
    }

    if (ndo->ndo_vflag > 1)
        print_unknown_data(ndo, pptr, "\n\t", len);

    return;

trunc:
    ND_PRINT((ndo, "%s", tstr));
}
