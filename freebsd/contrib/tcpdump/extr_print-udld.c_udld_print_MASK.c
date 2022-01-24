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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_6__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,int) ; 
#define  UDLD_DEVICE_ID_TLV 134 
#define  UDLD_DEVICE_NAME_TLV 133 
#define  UDLD_ECHO_TLV 132 
 int FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const) ; 
 int UDLD_HEADER_LEN ; 
#define  UDLD_MESSAGE_INTERVAL_TLV 131 
#define  UDLD_PORT_ID_TLV 130 
#define  UDLD_SEQ_NUMBER_TLV 129 
#define  UDLD_TIMEOUT_INTERVAL_TLV 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  istr ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  tstr ; 
 int /*<<< orphan*/  udld_code_values ; 
 int /*<<< orphan*/  udld_flags_values ; 
 int /*<<< orphan*/  udld_tlv_values ; 

void
FUNC10 (netdissect_options *ndo, const u_char *pptr, u_int length)
{
    int code, type, len;
    const u_char *tptr;

    if (length < UDLD_HEADER_LEN)
        goto trunc;

    tptr = pptr;

    FUNC3(*tptr, UDLD_HEADER_LEN);

    code = FUNC4(*tptr);

    FUNC2((ndo, "UDLDv%u, Code %s (%x), Flags [%s] (0x%02x), length %u",
           FUNC5(*tptr),
           FUNC9(udld_code_values, "Reserved", code),
           code,
           FUNC6(udld_flags_values, "none", *(tptr+1)),
           *(tptr+1),
           length));

    /*
     * In non-verbose mode, just print version and opcode type
     */
    if (ndo->ndo_vflag < 1) {
	return;
    }

    FUNC2((ndo, "\n\tChecksum 0x%04x (unverified)", FUNC0(tptr+2)));

    tptr += UDLD_HEADER_LEN;

    while (tptr < (pptr+length)) {

        FUNC3(*tptr, 4);
	type = FUNC0(tptr);
        len  = FUNC0(tptr+2);

        FUNC2((ndo, "\n\t%s (0x%04x) TLV, length %u",
               FUNC9(udld_tlv_values, "Unknown", type),
               type, len));

        if (type == 0)
            goto invalid;

        /* infinite loop check */
        if (len <= 4)
            goto invalid;

        len -= 4;
        tptr += 4;

        FUNC3(*tptr, len);

        switch (type) {
        case UDLD_DEVICE_ID_TLV:
        case UDLD_PORT_ID_TLV:
        case UDLD_DEVICE_NAME_TLV:
            FUNC2((ndo, ", "));
            FUNC8(ndo, tptr, len, NULL);
            break;

        case UDLD_ECHO_TLV:
            FUNC2((ndo, ", "));
            (void)FUNC7(ndo, tptr, len, NULL);
            break;

        case UDLD_MESSAGE_INTERVAL_TLV:
        case UDLD_TIMEOUT_INTERVAL_TLV:
            if (len != 1)
                goto invalid;
            FUNC2((ndo, ", %us", (*tptr)));
            break;

        case UDLD_SEQ_NUMBER_TLV:
            if (len != 4)
                goto invalid;
            FUNC2((ndo, ", %u", FUNC1(tptr)));
            break;

        default:
            break;
        }
        tptr += len;
    }

    return;

invalid:
    FUNC2((ndo, "%s", istr));
    return;
trunc:
    FUNC2((ndo, "%s", tstr));
}