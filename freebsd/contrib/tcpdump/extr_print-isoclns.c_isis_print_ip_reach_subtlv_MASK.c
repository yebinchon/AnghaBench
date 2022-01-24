#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
#define  ISIS_SUBTLV_EXTD_IP_REACH_ADMIN_TAG32 130 
#define  ISIS_SUBTLV_EXTD_IP_REACH_ADMIN_TAG64 129 
#define  ISIS_SUBTLV_EXTD_IP_REACH_MGMT_PREFIX_COLOR 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  isis_ext_ip_reach_subtlv_values ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static int
FUNC5(netdissect_options *ndo,
                           const uint8_t *tptr, int subt, int subl,
                           const char *ident)
{
    /* first lets see if we know the subTLVs name*/
    FUNC1((ndo, "%s%s subTLV #%u, length: %u",
              ident, FUNC4(isis_ext_ip_reach_subtlv_values, "unknown", subt),
              subt, subl));

    FUNC2(*tptr,subl);

    switch(subt) {
    case ISIS_SUBTLV_EXTD_IP_REACH_MGMT_PREFIX_COLOR: /* fall through */
    case ISIS_SUBTLV_EXTD_IP_REACH_ADMIN_TAG32:
        while (subl >= 4) {
	    FUNC1((ndo, ", 0x%08x (=%u)",
		   FUNC0(tptr),
		   FUNC0(tptr)));
	    tptr+=4;
	    subl-=4;
	}
	break;
    case ISIS_SUBTLV_EXTD_IP_REACH_ADMIN_TAG64:
        while (subl >= 8) {
	    FUNC1((ndo, ", 0x%08x%08x",
		   FUNC0(tptr),
		   FUNC0(tptr+4)));
	    tptr+=8;
	    subl-=8;
	}
	break;
    default:
	if (!FUNC3(ndo, tptr, "\n\t\t    ", subl))
	  return(0);
	break;
    }
    return(1);

trunc:
    FUNC1((ndo, "%s", ident));
    FUNC1((ndo, "%s", tstr));
    return(0);
}