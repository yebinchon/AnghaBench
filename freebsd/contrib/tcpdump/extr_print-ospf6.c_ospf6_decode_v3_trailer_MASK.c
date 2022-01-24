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
typedef  int /*<<< orphan*/  u_char ;
struct ospf6hdr {scalar_t__ ospf6_type; } ;
struct hello6 {int /*<<< orphan*/  hello_options; } ;
struct dd6 {int /*<<< orphan*/  db_options; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int OSPF6HDR_LEN ; 
 int OSPF6_OPTION_L ; 
 scalar_t__ OSPF_TYPE_DD ; 
 scalar_t__ OSPF_TYPE_HELLO ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int const) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int const) ; 

__attribute__((used)) static int
FUNC4(netdissect_options *ndo,
                        const struct ospf6hdr *op, const u_char *cp, const unsigned len)
{
	int llslen = 0;
	int lls_hello = 0;
	int lls_dd = 0;

	if (op->ospf6_type == OSPF_TYPE_HELLO) {
		const struct hello6 *hellop = (const struct hello6 *)((const uint8_t *)op + OSPF6HDR_LEN);
		FUNC1(hellop->hello_options);
		if (FUNC0(&hellop->hello_options) & OSPF6_OPTION_L)
			lls_hello = 1;
	} else if (op->ospf6_type == OSPF_TYPE_DD) {
		const struct dd6 *ddp = (const struct dd6 *)((const uint8_t *)op + OSPF6HDR_LEN);
		FUNC1(ddp->db_options);
		if (FUNC0(&ddp->db_options) & OSPF6_OPTION_L)
			lls_dd = 1;
	}
	if ((lls_hello || lls_dd) && (llslen = FUNC3(ndo, cp, len)) < 0)
		goto trunc;
	return FUNC2(ndo, cp + llslen, len - llslen);

trunc:
	return 1;
}