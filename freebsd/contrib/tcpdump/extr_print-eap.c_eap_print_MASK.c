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
typedef  int u_int ;
typedef  int u_char ;
struct eap_frame_t {int const type; int const* length; int /*<<< orphan*/  version; } ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
#define  EAP_FRAME_TYPE_ENCAP_ASF_ALERT 143 
#define  EAP_FRAME_TYPE_LOGOFF 142 
#define  EAP_FRAME_TYPE_PACKET 141 
 int /*<<< orphan*/  FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
#define  EAP_TYPE_AKA 140 
#define  EAP_TYPE_EXPANDED_TYPES 139 
#define  EAP_TYPE_EXPERIMENTAL 138 
#define  EAP_TYPE_FAST 137 
#define  EAP_TYPE_GTC 136 
#define  EAP_TYPE_IDENTITY 135 
#define  EAP_TYPE_MD5_CHALLENGE 134 
#define  EAP_TYPE_NAK 133 
#define  EAP_TYPE_NOTIFICATION 132 
#define  EAP_TYPE_OTP 131 
#define  EAP_TYPE_SIM 130 
#define  EAP_TYPE_TLS 129 
#define  EAP_TYPE_TTLS 128 
 int FUNC2 (int const*) ; 
 int /*<<< orphan*/  FUNC3 (int const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct eap_frame_t const) ; 
 int /*<<< orphan*/  FUNC6 (int const,int) ; 
 int /*<<< orphan*/  FUNC7 (int const*) ; 
 int /*<<< orphan*/  FUNC8 (int const*) ; 
 int /*<<< orphan*/  FUNC9 (int const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int const) ; 
 int /*<<< orphan*/  eap_aka_subtype_values ; 
 int /*<<< orphan*/  eap_code_values ; 
 int /*<<< orphan*/  eap_frame_type_values ; 
 int /*<<< orphan*/  eap_tls_flags_values ; 
 int /*<<< orphan*/  eap_type_values ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int const) ; 

void
FUNC13(netdissect_options *ndo,
          register const u_char *cp,
          u_int length)
{
    const struct eap_frame_t *eap;
    const u_char *tptr;
    u_int tlen, type, subtype;
    int count=0, len;

    tptr = cp;
    tlen = length;
    eap = (const struct eap_frame_t *)cp;
    FUNC5(*eap);

    /* in non-verbose mode just lets print the basic info */
    if (ndo->ndo_vflag < 1) {
	FUNC4((ndo, "%s (%u) v%u, len %u",
               FUNC12(eap_frame_type_values, "unknown", eap->type),
               eap->type,
               eap->version,
               FUNC2(eap->length)));
	return;
    }

    FUNC4((ndo, "%s (%u) v%u, len %u",
           FUNC12(eap_frame_type_values, "unknown", eap->type),
           eap->type,
           eap->version,
           FUNC2(eap->length)));

    tptr += sizeof(const struct eap_frame_t);
    tlen -= sizeof(const struct eap_frame_t);

    switch (eap->type) {
    case EAP_FRAME_TYPE_PACKET:
        FUNC9(tptr);
        type = *(tptr);
        FUNC7(tptr+2);
        len = FUNC2(tptr+2);
        FUNC4((ndo, ", %s (%u), id %u, len %u",
               FUNC12(eap_code_values, "unknown", type),
               type,
               *(tptr+1),
               len));

        FUNC6(*tptr, len);

        if (type <= 2) { /* For EAP_REQUEST and EAP_RESPONSE only */
            FUNC9(tptr+4);
            subtype = *(tptr+4);
            FUNC4((ndo, "\n\t\t Type %s (%u)",
                   FUNC12(eap_type_values, "unknown", subtype),
                   subtype));

            switch (subtype) {
            case EAP_TYPE_IDENTITY:
                if (len - 5 > 0) {
                    FUNC4((ndo, ", Identity: "));
                    FUNC11(ndo, tptr + 5, len - 5);
                }
                break;

            case EAP_TYPE_NOTIFICATION:
                if (len - 5 > 0) {
                    FUNC4((ndo, ", Notification: "));
                    FUNC11(ndo, tptr + 5, len - 5);
                }
                break;

            case EAP_TYPE_NAK:
                count = 5;

                /*
                 * one or more octets indicating
                 * the desired authentication
                 * type one octet per type
                 */
                while (count < len) {
                    FUNC9(tptr+count);
                    FUNC4((ndo, " %s (%u),",
                           FUNC12(eap_type_values, "unknown", *(tptr+count)),
                           *(tptr + count)));
                    count++;
                }
                break;

            case EAP_TYPE_TTLS:
            case EAP_TYPE_TLS:
                FUNC9(tptr + 5);
                if (subtype == EAP_TYPE_TTLS)
                    FUNC4((ndo, " TTLSv%u",
                           FUNC1(*(tptr + 5))));
                FUNC4((ndo, " flags [%s] 0x%02x,",
                       FUNC10(eap_tls_flags_values, "none", *(tptr+5)),
                       *(tptr + 5)));

                if (FUNC0(*(tptr+5))) {
                    FUNC8(tptr + 6);
		    FUNC4((ndo, " len %u", FUNC3(tptr + 6)));
                }
                break;

            case EAP_TYPE_FAST:
                FUNC9(tptr + 5);
                FUNC4((ndo, " FASTv%u",
                       FUNC1(*(tptr + 5))));
                FUNC4((ndo, " flags [%s] 0x%02x,",
                       FUNC10(eap_tls_flags_values, "none", *(tptr+5)),
                       *(tptr + 5)));

                if (FUNC0(*(tptr+5))) {
                    FUNC8(tptr + 6);
                    FUNC4((ndo, " len %u", FUNC3(tptr + 6)));
                }

                /* FIXME - TLV attributes follow */
                break;

            case EAP_TYPE_AKA:
            case EAP_TYPE_SIM:
                FUNC9(tptr + 5);
                FUNC4((ndo, " subtype [%s] 0x%02x,",
                       FUNC12(eap_aka_subtype_values, "unknown", *(tptr+5)),
                       *(tptr + 5)));

                /* FIXME - TLV attributes follow */
                break;

            case EAP_TYPE_MD5_CHALLENGE:
            case EAP_TYPE_OTP:
            case EAP_TYPE_GTC:
            case EAP_TYPE_EXPANDED_TYPES:
            case EAP_TYPE_EXPERIMENTAL:
            default:
                break;
            }
        }
        break;

    case EAP_FRAME_TYPE_LOGOFF:
    case EAP_FRAME_TYPE_ENCAP_ASF_ALERT:
    default:
        break;
    }
    return;

 trunc:
    FUNC4((ndo, "\n\t[|EAP]"));
}