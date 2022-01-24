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
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct lwapp_transport_header {int version; int /*<<< orphan*/  frag_id; int /*<<< orphan*/  length; } ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ LWAPP_VERSION ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct lwapp_transport_header const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  lwapp_header_bits_values ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/  const*,char*,int) ; 

void
FUNC9(netdissect_options *ndo,
                 const u_char *pptr, u_int len)
{
    const struct lwapp_transport_header *lwapp_trans_header;
    const u_char *tptr;
    int tlen;

    tptr=pptr;

    /* check if enough bytes for AP identity */
    FUNC6(*tptr, 6);
    lwapp_trans_header = (const struct lwapp_transport_header *)pptr;
    FUNC5(*lwapp_trans_header);

    /*
     * Sanity checking of the header.
     */
    if (FUNC3(lwapp_trans_header->version) != LWAPP_VERSION) {
        FUNC4((ndo, "LWAPP version %u packet not supported",
               FUNC3(lwapp_trans_header->version)));
        return;
    }

    /* non-verbose */
    if (ndo->ndo_vflag < 1) {
        FUNC4((ndo, "LWAPPv%u, %s frame, Flags [%s], length %u",
               FUNC3(lwapp_trans_header->version),
               FUNC1(lwapp_trans_header->version) ? "Control" : "Data",
               FUNC7(lwapp_header_bits_values,"none",(lwapp_trans_header->version)&0x07),
               len));
        return;
    }

    /* ok they seem to want to know everything - lets fully decode it */
    tlen=FUNC0(lwapp_trans_header->length);

    FUNC4((ndo, "LWAPPv%u, %s frame, Radio-id  %u, Flags [%s], Frag-id  %u, length %u",
           FUNC3(lwapp_trans_header->version),
           FUNC1(lwapp_trans_header->version) ? "Control" : "Data",
           FUNC2(lwapp_trans_header->version),
           FUNC7(lwapp_header_bits_values,"none",(lwapp_trans_header->version)&0x07),
           lwapp_trans_header->frag_id,
           tlen));

    tptr+=sizeof(const struct lwapp_transport_header);
    tlen-=sizeof(const struct lwapp_transport_header);

    /* FIX - An IEEE 802.11 frame follows - hexdump for now */
    FUNC8(ndo, tptr, "\n\t", tlen);

    return;

 trunc:
    FUNC4((ndo, "\n\t\t packet exceeded snapshot"));
}