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
#define  DTP_DOMAIN_TLV 131 
#define  DTP_DTP_TYPE_TLV 130 
 int DTP_HEADER_LEN ; 
#define  DTP_NEIGHBOR_TLV 129 
#define  DTP_STATUS_TLV 128 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  dtp_tlv_values ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  istr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  tstr ; 

void
FUNC6 (netdissect_options *ndo, const u_char *pptr, u_int length)
{
    int type, len;
    const u_char *tptr;

    if (length < DTP_HEADER_LEN)
        goto trunc;

    tptr = pptr;

    FUNC2(*tptr, DTP_HEADER_LEN);

    FUNC1((ndo, "DTPv%u, length %u",
           (*tptr),
           length));

    /*
     * In non-verbose mode, just print version.
     */
    if (ndo->ndo_vflag < 1) {
	return;
    }

    tptr += DTP_HEADER_LEN;

    while (tptr < (pptr+length)) {

        FUNC2(*tptr, 4);
	type = FUNC0(tptr);
        len  = FUNC0(tptr+2);
       /* XXX: should not be but sometimes it is, see the test captures */
        if (type == 0)
            return;
        FUNC1((ndo, "\n\t%s (0x%04x) TLV, length %u",
               FUNC5(dtp_tlv_values, "Unknown", type),
               type, len));

        /* infinite loop check */
        if (len < 4)
            goto invalid;
        FUNC2(*tptr, len);

        switch (type) {
	case DTP_DOMAIN_TLV:
		FUNC1((ndo, ", "));
		FUNC4(ndo, tptr+4, len-4, pptr+length);
		break;

	case DTP_STATUS_TLV:
	case DTP_DTP_TYPE_TLV:
                if (len < 5)
                    goto invalid;
                FUNC1((ndo, ", 0x%x", *(tptr+4)));
                break;

	case DTP_NEIGHBOR_TLV:
                if (len < 10)
                    goto invalid;
                FUNC1((ndo, ", %s", FUNC3(ndo, tptr+4)));
                break;

        default:
            break;
        }
        tptr += len;
    }

    return;

 invalid:
    FUNC1((ndo, "%s", istr));
    return;
 trunc:
    FUNC1((ndo, "%s", tstr));
}