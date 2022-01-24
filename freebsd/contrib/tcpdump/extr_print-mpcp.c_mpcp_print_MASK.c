#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int u_char ;
struct mpcp_reg_t {int const* assigned_port; int flags; int const* sync_time; int /*<<< orphan*/  echoed_pending_grants; } ;
struct mpcp_reg_req_t {int flags; int /*<<< orphan*/  pending_grants; } ;
struct mpcp_reg_ack_t {int const* echoed_assigned_port; int flags; int const* echoed_sync_time; } ;
struct mpcp_grant_t {int const* duration; int /*<<< orphan*/  starttime; } ;
struct mpcp_common_header_t {int const* opcode; int /*<<< orphan*/  timestamp; } ;
struct TYPE_5__ {int /*<<< orphan*/  ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int MPCP_GRANT_NUMBER_LEN ; 
 int const MPCP_GRANT_NUMBER_MASK ; 
#define  MPCP_OPCODE_GATE 133 
#define  MPCP_OPCODE_PAUSE 132 
#define  MPCP_OPCODE_REG 131 
#define  MPCP_OPCODE_REG_ACK 130 
#define  MPCP_OPCODE_REG_REQ 129 
#define  MPCP_OPCODE_REPORT 128 
 int MPCP_REPORT_QUEUESETS_LEN ; 
 int MPCP_REPORT_REPORTBITMAP_LEN ; 
 int MPCP_TIMESTAMP_DURATION_LEN ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int const,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int const) ; 
 int /*<<< orphan*/  mpcp_grant_flag_values ; 
 int /*<<< orphan*/  mpcp_opcode_values ; 
 int /*<<< orphan*/  mpcp_reg_ack_flag_values ; 
 int /*<<< orphan*/  mpcp_reg_flag_values ; 
 int /*<<< orphan*/  mpcp_reg_req_flag_values ; 
 int /*<<< orphan*/  mpcp_report_bitmap_values ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC7(netdissect_options *ndo, register const u_char *pptr, register u_int length)
{
    union {
        const struct mpcp_common_header_t *common_header;
        const struct mpcp_grant_t *grant;
        const struct mpcp_reg_req_t *reg_req;
        const struct mpcp_reg_t *reg;
        const struct mpcp_reg_ack_t *reg_ack;
    } mpcp;


    const u_char *tptr;
    uint16_t opcode;
    uint8_t grant_numbers, grant;
    uint8_t queue_sets, queue_set, report_bitmap, report;

    tptr=pptr;
    mpcp.common_header = (const struct mpcp_common_header_t *)pptr;

    FUNC3(*tptr, sizeof(const struct mpcp_common_header_t));
    opcode = FUNC0(mpcp.common_header->opcode);
    FUNC2((ndo, "MPCP, Opcode %s", FUNC6(mpcp_opcode_values, "Unknown (%u)", opcode)));
    if (opcode != MPCP_OPCODE_PAUSE) {
        FUNC2((ndo, ", Timestamp %u ticks", FUNC1(mpcp.common_header->timestamp)));
    }
    FUNC2((ndo, ", length %u", length));

    if (!ndo->ndo_vflag)
        return;

    tptr += sizeof(const struct mpcp_common_header_t);

    switch (opcode) {
    case MPCP_OPCODE_PAUSE:
        break;

    case MPCP_OPCODE_GATE:
        FUNC3(*tptr, MPCP_GRANT_NUMBER_LEN);
        grant_numbers = *tptr & MPCP_GRANT_NUMBER_MASK;
        FUNC2((ndo, "\n\tGrant Numbers %u, Flags [ %s ]",
               grant_numbers,
               FUNC4(mpcp_grant_flag_values,
                          "?",
                          *tptr &~ MPCP_GRANT_NUMBER_MASK)));
        tptr++;

        for (grant = 1; grant <= grant_numbers; grant++) {
            FUNC3(*tptr, sizeof(const struct mpcp_grant_t));
            mpcp.grant = (const struct mpcp_grant_t *)tptr;
            FUNC2((ndo, "\n\tGrant #%u, Start-Time %u ticks, duration %u ticks",
                   grant,
                   FUNC1(mpcp.grant->starttime),
                   FUNC0(mpcp.grant->duration)));
            tptr += sizeof(const struct mpcp_grant_t);
        }

        FUNC3(*tptr, MPCP_TIMESTAMP_DURATION_LEN);
        FUNC2((ndo, "\n\tSync-Time %u ticks", FUNC0(tptr)));
        break;


    case MPCP_OPCODE_REPORT:
        FUNC3(*tptr, MPCP_REPORT_QUEUESETS_LEN);
        queue_sets = *tptr;
        tptr+=MPCP_REPORT_QUEUESETS_LEN;
        FUNC2((ndo, "\n\tTotal Queue-Sets %u", queue_sets));

        for (queue_set = 1; queue_set < queue_sets; queue_set++) {
            FUNC3(*tptr, MPCP_REPORT_REPORTBITMAP_LEN);
            report_bitmap = *(tptr);
            FUNC2((ndo, "\n\t  Queue-Set #%u, Report-Bitmap [ %s ]",
                   queue_sets,
                   FUNC4(mpcp_report_bitmap_values, "Unknown", report_bitmap)));
            tptr++;

            report=1;
            while (report_bitmap != 0) {
                if (report_bitmap & 1) {
                    FUNC3(*tptr, MPCP_TIMESTAMP_DURATION_LEN);
                    FUNC2((ndo, "\n\t    Q%u Report, Duration %u ticks",
                           report,
                           FUNC0(tptr)));
                    tptr+=MPCP_TIMESTAMP_DURATION_LEN;
                }
                report++;
                report_bitmap = report_bitmap >> 1;
            }
        }
        break;

    case MPCP_OPCODE_REG_REQ:
        FUNC3(*tptr, sizeof(const struct mpcp_reg_req_t));
        mpcp.reg_req = (const struct mpcp_reg_req_t *)tptr;
        FUNC2((ndo, "\n\tFlags [ %s ], Pending-Grants %u",
               FUNC4(mpcp_reg_req_flag_values, "Reserved", mpcp.reg_req->flags),
               mpcp.reg_req->pending_grants));
        break;

    case MPCP_OPCODE_REG:
        FUNC3(*tptr, sizeof(const struct mpcp_reg_t));
        mpcp.reg = (const struct mpcp_reg_t *)tptr;
        FUNC2((ndo, "\n\tAssigned-Port %u, Flags [ %s ]" \
               "\n\tSync-Time %u ticks, Echoed-Pending-Grants %u",
               FUNC0(mpcp.reg->assigned_port),
               FUNC4(mpcp_reg_flag_values, "Reserved", mpcp.reg->flags),
               FUNC0(mpcp.reg->sync_time),
               mpcp.reg->echoed_pending_grants));
        break;

    case MPCP_OPCODE_REG_ACK:
        FUNC3(*tptr, sizeof(const struct mpcp_reg_ack_t));
        mpcp.reg_ack = (const struct mpcp_reg_ack_t *)tptr;
        FUNC2((ndo, "\n\tEchoed-Assigned-Port %u, Flags [ %s ]" \
               "\n\tEchoed-Sync-Time %u ticks",
               FUNC0(mpcp.reg_ack->echoed_assigned_port),
               FUNC4(mpcp_reg_ack_flag_values, "Reserved", mpcp.reg_ack->flags),
               FUNC0(mpcp.reg_ack->echoed_sync_time)));
        break;

    default:
        /* unknown opcode - hexdump for now */
        FUNC5(ndo,pptr, "\n\t", length);
        break;
    }

    return;

trunc:
    FUNC2((ndo, "\n\t[|MPCP]"));
}