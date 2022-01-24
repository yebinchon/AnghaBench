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
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
#define  DH6OPT_DNS_SERVERS 130 
#define  DH6OPT_DOMAIN_LIST 129 
#define  DH6OPT_SNTP_SERVERS 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dh6opt_str ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  istr ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static int
FUNC5(netdissect_options *ndo,
             const u_char *cp, u_int length, int indent)
{
    u_int i, t;
    const u_char *tlv, *value;
    uint16_t type, optlen;

    i = 0;
    while (i < length) {
        if (i + 4 > length)
            return -1;
        tlv = cp + i;
        type = FUNC0(tlv);
        optlen = FUNC0(tlv + 2);
        value = tlv + 4;

        FUNC1((ndo, "\n"));
        for (t = indent; t > 0; t--)
            FUNC1((ndo, "\t"));

        FUNC1((ndo, "%s", FUNC4(dh6opt_str, "Unknown", type)));
        FUNC1((ndo," (%u)", optlen + 4 ));
        if (i + 4 + optlen > length)
            return -1;

        switch (type) {
            case DH6OPT_DNS_SERVERS:
            case DH6OPT_SNTP_SERVERS: {
                if (optlen % 16 != 0) {
                    FUNC1((ndo, " %s", istr));
                    return -1;
                }
                for (t = 0; t < optlen; t += 16)
                    FUNC1((ndo, " %s", FUNC2(ndo, value + t)));
            }
                break;
            case DH6OPT_DOMAIN_LIST: {
                const u_char *tp = value;
                while (tp < value + optlen) {
                    FUNC1((ndo, " "));
                    if ((tp = FUNC3(ndo, tp, value + optlen)) == NULL)
                        return -1;
                }
            }
                break;
        }

        i += 4 + optlen;
    }
    return 0;
}