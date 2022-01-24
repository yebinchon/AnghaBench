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
typedef  int /*<<< orphan*/  u8 ;
struct ttls_parse_avp {size_t eap_len; int /*<<< orphan*/ * eapdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(const u8 *dpos, size_t dlen,
				   struct ttls_parse_avp *parse)
{
	FUNC3(MSG_DEBUG, "EAP-TTLS: AVP - EAP Message");
	if (parse->eapdata == NULL) {
		parse->eapdata = FUNC1(dpos, dlen);
		if (parse->eapdata == NULL) {
			FUNC3(MSG_WARNING, "EAP-TTLS: Failed to allocate "
				   "memory for Phase 2 EAP data");
			return -1;
		}
		parse->eap_len = dlen;
	} else {
		u8 *neweap = FUNC2(parse->eapdata, parse->eap_len + dlen);
		if (neweap == NULL) {
			FUNC3(MSG_WARNING, "EAP-TTLS: Failed to allocate "
				   "memory for Phase 2 EAP data");
			return -1;
		}
		FUNC0(neweap + parse->eap_len, dpos, dlen);
		parse->eapdata = neweap;
		parse->eap_len += dlen;
	}

	return 0;
}