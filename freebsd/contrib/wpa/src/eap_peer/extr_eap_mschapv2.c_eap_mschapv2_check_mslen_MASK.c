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
struct eap_sm {scalar_t__ workaround; } ;
struct eap_mschapv2_hdr {int /*<<< orphan*/  ms_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct eap_sm *sm, size_t len,
				    const struct eap_mschapv2_hdr *ms)
{
	size_t ms_len = FUNC0(ms->ms_length);

	if (ms_len == len)
		return 0;

	FUNC1(MSG_INFO, "EAP-MSCHAPV2: Invalid header: len=%lu "
		   "ms_len=%lu", (unsigned long) len, (unsigned long) ms_len);
	if (sm->workaround) {
		/* Some authentication servers use invalid ms_len,
		 * ignore it for interoperability. */
		FUNC1(MSG_INFO, "EAP-MSCHAPV2: workaround, ignore"
			   " invalid ms_len %lu (len %lu)",
			   (unsigned long) ms_len,
			   (unsigned long) len);
		return 0;
	}

	return -1;
}