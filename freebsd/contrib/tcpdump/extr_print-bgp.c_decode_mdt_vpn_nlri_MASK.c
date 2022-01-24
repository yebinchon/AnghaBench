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
typedef  int /*<<< orphan*/  u_int ;
typedef  int u_char ;
struct in_addr {int dummy; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int MDT_VPN_NLRI_LEN ; 
 int /*<<< orphan*/  FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (int const,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int const*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,char*,char*,char*) ; 

__attribute__((used)) static int
FUNC5(netdissect_options *ndo,
                    const u_char *pptr, char *buf, u_int buflen)
{

    const u_char *rd;
    const u_char *vpn_ip;

    FUNC0(pptr[0]);

    /* if the NLRI is not predefined length, quit.*/
    if (*pptr != MDT_VPN_NLRI_LEN * 8)
	return -1;
    pptr++;

    /* RD */
    FUNC1(pptr[0], 8);
    rd = pptr;
    pptr+=8;

    /* IPv4 address */
    FUNC1(pptr[0], sizeof(struct in_addr));
    vpn_ip = pptr;
    pptr+=sizeof(struct in_addr);

    /* MDT Group Address */
    FUNC1(pptr[0], sizeof(struct in_addr));

    FUNC4(buf, buflen, "RD: %s, VPN IP Address: %s, MC Group Address: %s",
	     FUNC2(ndo, rd), FUNC3(ndo, vpn_ip), FUNC3(ndo, pptr));

    return MDT_VPN_NLRI_LEN + 1;

 trunc:

return -2;
}