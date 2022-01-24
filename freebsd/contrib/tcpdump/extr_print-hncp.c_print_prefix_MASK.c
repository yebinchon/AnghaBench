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
typedef  int u_int ;
typedef  int u_char ;
struct in_addr {int dummy; } ;
typedef  int /*<<< orphan*/  netdissect_options ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int IPV4_MAPPED_HEADING_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int const*,int,char*,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,struct in_addr*) ; 
 scalar_t__ FUNC3 (int const*) ; 
 int /*<<< orphan*/  FUNC4 (struct in_addr*,int const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct in_addr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,int) ; 

__attribute__((used)) static int
FUNC7(netdissect_options *ndo, const u_char *prefix, u_int max_length)
{
    int plenbytes;
    char buf[sizeof("xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:xxxx::/128")];

    if (prefix[0] >= 96 && max_length >= IPV4_MAPPED_HEADING_LEN + 1 &&
        FUNC3(&prefix[1])) {
        struct in_addr addr;
        u_int plen;

        plen = prefix[0]-96;
        if (32 < plen)
            return -1;
        max_length -= 1;

        FUNC5(&addr, 0, sizeof(addr));
        plenbytes = (plen + 7) / 8;
        if (max_length < (u_int)plenbytes + IPV4_MAPPED_HEADING_LEN)
            return -3;
        FUNC4(&addr, &prefix[1 + IPV4_MAPPED_HEADING_LEN], plenbytes);
        if (plen % 8) {
		((u_char *)&addr)[plenbytes - 1] &=
			((0xff00 >> (plen % 8)) & 0xff);
	}
	FUNC6(buf, sizeof(buf), "%s/%d", FUNC2(ndo, &addr), plen);
        plenbytes += 1 + IPV4_MAPPED_HEADING_LEN;
    } else {
        plenbytes = FUNC1(ndo, prefix, max_length, buf, sizeof(buf));
    }

    FUNC0((ndo, "%s", buf));
    return plenbytes;
}