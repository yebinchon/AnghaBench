#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
typedef  int u_int ;
typedef  char u_char ;
struct TYPE_6__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char const,int) ; 
 int SYSLOG_FACILITY_MASK ; 
 int SYSLOG_MAX_DIGITS ; 
 int SYSLOG_SEVERITY_MASK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const) ; 
 int /*<<< orphan*/  syslog_facility_values ; 
 int /*<<< orphan*/  syslog_severity_values ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  tstr ; 

void
FUNC5(netdissect_options *ndo,
             register const u_char *pptr, register u_int len)
{
    uint16_t msg_off = 0;
    uint16_t pri = 0;
    uint16_t facility,severity;

    /* extract decimal figures that are
     * encapsulated within < > tags
     * based on this decimal figure extract the
     * severity and facility values
     */

    FUNC1(*pptr, 1);
    if (*(pptr+msg_off) == '<') {
        msg_off++;
        FUNC1(*(pptr + msg_off), 1);
        while ( *(pptr+msg_off) >= '0' &&
                *(pptr+msg_off) <= '9' &&
                msg_off <= SYSLOG_MAX_DIGITS) {
            pri = pri * 10 + (*(pptr+msg_off) - '0');
            msg_off++;
            FUNC1(*(pptr + msg_off), 1);
        }
        if (*(pptr+msg_off) != '>') {
            FUNC0((ndo, "%s", tstr));
            return;
        }
        msg_off++;
    } else {
        FUNC0((ndo, "%s", tstr));
        return;
    }

    facility = (pri & SYSLOG_FACILITY_MASK) >> 3;
    severity = pri & SYSLOG_SEVERITY_MASK;

    if (ndo->ndo_vflag < 1 )
    {
        FUNC0((ndo, "SYSLOG %s.%s, length: %u",
               FUNC4(syslog_facility_values, "unknown (%u)", facility),
               FUNC4(syslog_severity_values, "unknown (%u)", severity),
               len));
        return;
    }

    FUNC0((ndo, "SYSLOG, length: %u\n\tFacility %s (%u), Severity %s (%u)\n\tMsg: ",
           len,
           FUNC4(syslog_facility_values, "unknown (%u)", facility),
           facility,
           FUNC4(syslog_severity_values, "unknown (%u)", severity),
           severity));

    /* print the syslog text in verbose mode */
    for (; msg_off < len; msg_off++) {
        FUNC1(*(pptr + msg_off), 1);
        FUNC3(ndo, *(pptr + msg_off));
    }

    if (ndo->ndo_vflag > 1)
        FUNC2(ndo, pptr, "\n\t", len);

    return;

trunc:
    FUNC0((ndo, "%s", tstr));
}