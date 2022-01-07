
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
struct mpcp_reg_t {int const* assigned_port; int flags; int const* sync_time; int echoed_pending_grants; } ;
struct mpcp_reg_req_t {int flags; int pending_grants; } ;
struct mpcp_reg_ack_t {int const* echoed_assigned_port; int flags; int const* echoed_sync_time; } ;
struct mpcp_grant_t {int const* duration; int starttime; } ;
struct mpcp_common_header_t {int const* opcode; int timestamp; } ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int EXTRACT_32BITS (int ) ;
 int MPCP_GRANT_NUMBER_LEN ;
 int const MPCP_GRANT_NUMBER_MASK ;






 int MPCP_REPORT_QUEUESETS_LEN ;
 int MPCP_REPORT_REPORTBITMAP_LEN ;
 int MPCP_TIMESTAMP_DURATION_LEN ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (int const,int) ;
 int bittok2str (int ,char*,int const) ;
 int mpcp_grant_flag_values ;
 int mpcp_opcode_values ;
 int mpcp_reg_ack_flag_values ;
 int mpcp_reg_flag_values ;
 int mpcp_reg_req_flag_values ;
 int mpcp_report_bitmap_values ;
 int print_unknown_data (TYPE_1__*,int const*,char*,int ) ;
 int tok2str (int ,char*,int) ;

void
mpcp_print(netdissect_options *ndo, register const u_char *pptr, register u_int length)
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

    ND_TCHECK2(*tptr, sizeof(const struct mpcp_common_header_t));
    opcode = EXTRACT_16BITS(mpcp.common_header->opcode);
    ND_PRINT((ndo, "MPCP, Opcode %s", tok2str(mpcp_opcode_values, "Unknown (%u)", opcode)));
    if (opcode != 132) {
        ND_PRINT((ndo, ", Timestamp %u ticks", EXTRACT_32BITS(mpcp.common_header->timestamp)));
    }
    ND_PRINT((ndo, ", length %u", length));

    if (!ndo->ndo_vflag)
        return;

    tptr += sizeof(const struct mpcp_common_header_t);

    switch (opcode) {
    case 132:
        break;

    case 133:
        ND_TCHECK2(*tptr, MPCP_GRANT_NUMBER_LEN);
        grant_numbers = *tptr & MPCP_GRANT_NUMBER_MASK;
        ND_PRINT((ndo, "\n\tGrant Numbers %u, Flags [ %s ]",
               grant_numbers,
               bittok2str(mpcp_grant_flag_values,
                          "?",
                          *tptr &~ MPCP_GRANT_NUMBER_MASK)));
        tptr++;

        for (grant = 1; grant <= grant_numbers; grant++) {
            ND_TCHECK2(*tptr, sizeof(const struct mpcp_grant_t));
            mpcp.grant = (const struct mpcp_grant_t *)tptr;
            ND_PRINT((ndo, "\n\tGrant #%u, Start-Time %u ticks, duration %u ticks",
                   grant,
                   EXTRACT_32BITS(mpcp.grant->starttime),
                   EXTRACT_16BITS(mpcp.grant->duration)));
            tptr += sizeof(const struct mpcp_grant_t);
        }

        ND_TCHECK2(*tptr, MPCP_TIMESTAMP_DURATION_LEN);
        ND_PRINT((ndo, "\n\tSync-Time %u ticks", EXTRACT_16BITS(tptr)));
        break;


    case 128:
        ND_TCHECK2(*tptr, MPCP_REPORT_QUEUESETS_LEN);
        queue_sets = *tptr;
        tptr+=MPCP_REPORT_QUEUESETS_LEN;
        ND_PRINT((ndo, "\n\tTotal Queue-Sets %u", queue_sets));

        for (queue_set = 1; queue_set < queue_sets; queue_set++) {
            ND_TCHECK2(*tptr, MPCP_REPORT_REPORTBITMAP_LEN);
            report_bitmap = *(tptr);
            ND_PRINT((ndo, "\n\t  Queue-Set #%u, Report-Bitmap [ %s ]",
                   queue_sets,
                   bittok2str(mpcp_report_bitmap_values, "Unknown", report_bitmap)));
            tptr++;

            report=1;
            while (report_bitmap != 0) {
                if (report_bitmap & 1) {
                    ND_TCHECK2(*tptr, MPCP_TIMESTAMP_DURATION_LEN);
                    ND_PRINT((ndo, "\n\t    Q%u Report, Duration %u ticks",
                           report,
                           EXTRACT_16BITS(tptr)));
                    tptr+=MPCP_TIMESTAMP_DURATION_LEN;
                }
                report++;
                report_bitmap = report_bitmap >> 1;
            }
        }
        break;

    case 129:
        ND_TCHECK2(*tptr, sizeof(const struct mpcp_reg_req_t));
        mpcp.reg_req = (const struct mpcp_reg_req_t *)tptr;
        ND_PRINT((ndo, "\n\tFlags [ %s ], Pending-Grants %u",
               bittok2str(mpcp_reg_req_flag_values, "Reserved", mpcp.reg_req->flags),
               mpcp.reg_req->pending_grants));
        break;

    case 131:
        ND_TCHECK2(*tptr, sizeof(const struct mpcp_reg_t));
        mpcp.reg = (const struct mpcp_reg_t *)tptr;
        ND_PRINT((ndo, "\n\tAssigned-Port %u, Flags [ %s ]" "\n\tSync-Time %u ticks, Echoed-Pending-Grants %u",

               EXTRACT_16BITS(mpcp.reg->assigned_port),
               bittok2str(mpcp_reg_flag_values, "Reserved", mpcp.reg->flags),
               EXTRACT_16BITS(mpcp.reg->sync_time),
               mpcp.reg->echoed_pending_grants));
        break;

    case 130:
        ND_TCHECK2(*tptr, sizeof(const struct mpcp_reg_ack_t));
        mpcp.reg_ack = (const struct mpcp_reg_ack_t *)tptr;
        ND_PRINT((ndo, "\n\tEchoed-Assigned-Port %u, Flags [ %s ]" "\n\tEchoed-Sync-Time %u ticks",

               EXTRACT_16BITS(mpcp.reg_ack->echoed_assigned_port),
               bittok2str(mpcp_reg_ack_flag_values, "Reserved", mpcp.reg_ack->flags),
               EXTRACT_16BITS(mpcp.reg_ack->echoed_sync_time)));
        break;

    default:

        print_unknown_data(ndo,pptr, "\n\t", length);
        break;
    }

    return;

trunc:
    ND_PRINT((ndo, "\n\t[|MPCP]"));
}
