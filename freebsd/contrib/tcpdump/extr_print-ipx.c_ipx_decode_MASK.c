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
typedef  int u_short ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct ipxHdr {int /*<<< orphan*/  dstSkt; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
#define  IPX_SKT_DIAGNOSTICS 134 
#define  IPX_SKT_EIGRP 133 
#define  IPX_SKT_NCP 132 
#define  IPX_SKT_NETBIOS 131 
#define  IPX_SKT_NWLINK_DGM 130 
#define  IPX_SKT_RIP 129 
#define  IPX_SKT_SAP 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(netdissect_options *ndo, const struct ipxHdr *ipx, const u_char *datap, u_int length)
{
    register u_short dstSkt;

    dstSkt = FUNC0(&ipx->dstSkt);
    switch (dstSkt) {
      case IPX_SKT_NCP:
	FUNC1((ndo, "ipx-ncp %d", length));
	break;
      case IPX_SKT_SAP:
	FUNC5(ndo, (const u_short *)datap, length);
	break;
      case IPX_SKT_RIP:
	FUNC4(ndo, (const u_short *)datap, length);
	break;
      case IPX_SKT_NETBIOS:
	FUNC1((ndo, "ipx-netbios %d", length));
#ifdef ENABLE_SMB
	ipx_netbios_print(ndo, datap, length);
#endif
	break;
      case IPX_SKT_DIAGNOSTICS:
	FUNC1((ndo, "ipx-diags %d", length));
	break;
      case IPX_SKT_NWLINK_DGM:
	FUNC1((ndo, "ipx-nwlink-dgm %d", length));
#ifdef ENABLE_SMB
	ipx_netbios_print(ndo, datap, length);
#endif
	break;
      case IPX_SKT_EIGRP:
	FUNC2(ndo, datap, length);
	break;
      default:
	FUNC1((ndo, "ipx-#%x %d", dstSkt, length));
	break;
    }
}