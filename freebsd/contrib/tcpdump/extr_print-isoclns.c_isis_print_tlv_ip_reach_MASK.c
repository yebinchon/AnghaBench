#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  metric_error; int /*<<< orphan*/  metric_expense; int /*<<< orphan*/  metric_delay; int /*<<< orphan*/  metric_default; } ;
struct isis_tlv_ip_reach {TYPE_1__ isis_metric_block; int /*<<< orphan*/  prefix; int /*<<< orphan*/  mask; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct isis_tlv_ip_reach const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(netdissect_options *ndo,
                        const uint8_t *cp, const char *ident, int length)
{
	int prefix_len;
	const struct isis_tlv_ip_reach *tlv_ip_reach;

	tlv_ip_reach = (const struct isis_tlv_ip_reach *)cp;

	while (length > 0) {
		if ((size_t)length < sizeof(*tlv_ip_reach)) {
			FUNC5((ndo, "short IPv4 Reachability (%d vs %lu)",
                               length,
                               (unsigned long)sizeof(*tlv_ip_reach)));
			return (0);
		}

		if (!FUNC6(*tlv_ip_reach))
		    return (0);

		prefix_len = FUNC8(FUNC0(tlv_ip_reach->mask));

		if (prefix_len == -1)
			FUNC5((ndo, "%sIPv4 prefix: %s mask %s",
                               ident,
			       FUNC7(ndo, (tlv_ip_reach->prefix)),
			       FUNC7(ndo, (tlv_ip_reach->mask))));
		else
			FUNC5((ndo, "%sIPv4 prefix: %15s/%u",
                               ident,
			       FUNC7(ndo, (tlv_ip_reach->prefix)),
			       prefix_len));

		FUNC5((ndo, ", Distribution: %s, Metric: %u, %s",
                       FUNC3(tlv_ip_reach->isis_metric_block.metric_default) ? "down" : "up",
                       FUNC4(tlv_ip_reach->isis_metric_block.metric_default),
                       FUNC1(tlv_ip_reach->isis_metric_block.metric_default) ? "External" : "Internal"));

		if (!FUNC2(tlv_ip_reach->isis_metric_block.metric_delay))
                    FUNC5((ndo, "%s  Delay Metric: %u, %s",
                           ident,
                           FUNC4(tlv_ip_reach->isis_metric_block.metric_delay),
                           FUNC1(tlv_ip_reach->isis_metric_block.metric_delay) ? "External" : "Internal"));

		if (!FUNC2(tlv_ip_reach->isis_metric_block.metric_expense))
                    FUNC5((ndo, "%s  Expense Metric: %u, %s",
                           ident,
                           FUNC4(tlv_ip_reach->isis_metric_block.metric_expense),
                           FUNC1(tlv_ip_reach->isis_metric_block.metric_expense) ? "External" : "Internal"));

		if (!FUNC2(tlv_ip_reach->isis_metric_block.metric_error))
                    FUNC5((ndo, "%s  Error Metric: %u, %s",
                           ident,
                           FUNC4(tlv_ip_reach->isis_metric_block.metric_error),
                           FUNC1(tlv_ip_reach->isis_metric_block.metric_error) ? "External" : "Internal"));

		length -= sizeof(struct isis_tlv_ip_reach);
		tlv_ip_reach++;
	}
	return (1);
}