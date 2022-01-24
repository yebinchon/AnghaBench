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
typedef  int u8 ;
struct eap_sake_parse_attr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (struct eap_sake_parse_attr*,int const,int const,int const*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sake_parse_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC3(const u8 *buf, size_t len,
			      struct eap_sake_parse_attr *attr)
{
	const u8 *pos = buf, *end = buf + len;

	FUNC1(attr, 0, sizeof(*attr));
	while (pos < end) {
		if (end - pos < 2) {
			FUNC2(MSG_DEBUG, "EAP-SAKE: Too short attribute");
			return -1;
		}

		if (pos[1] < 2) {
			FUNC2(MSG_DEBUG, "EAP-SAKE: Invalid attribute "
				   "length (%d)", pos[1]);
			return -1;
		}

		if (pos + pos[1] > end) {
			FUNC2(MSG_DEBUG, "EAP-SAKE: Attribute underflow");
			return -1;
		}

		if (FUNC0(attr, pos[0], pos[1] - 2, pos + 2))
			return -1;

		pos += pos[1];
	}

	return 0;
}