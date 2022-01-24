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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
#define  GRESRE_ASN 129 
#define  GRESRE_IP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(netdissect_options *ndo, uint16_t af, uint8_t sreoff,
    uint8_t srelen, const u_char *bp, u_int len)
{
	int ret;

	switch (af) {
	case GRESRE_IP:
		FUNC0((ndo, ", (rtaf=ip"));
		ret = FUNC2(ndo, sreoff, srelen, bp, len);
		FUNC0((ndo, ")"));
		break;
	case GRESRE_ASN:
		FUNC0((ndo, ", (rtaf=asn"));
		ret = FUNC1(ndo, sreoff, srelen, bp, len);
		FUNC0((ndo, ")"));
		break;
	default:
		FUNC0((ndo, ", (rtaf=0x%x)", af));
		ret = 1;
	}
	return (ret);
}