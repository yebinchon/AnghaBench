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
struct eap_sm {int dummy; } ;
struct eap_gpsk_data {int dummy; } ;
struct eap_gpsk_csuite {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (struct eap_sm*,struct eap_gpsk_data*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static const u8 * FUNC3(struct eap_sm *sm,
					       struct eap_gpsk_data *data,
					       const u8 **list,
					       size_t *list_len,
					       const u8 *pos, const u8 *end)
{
	size_t len;

	if (pos == NULL)
		return NULL;

	if (end - pos < 2) {
		FUNC2(MSG_DEBUG, "EAP-GPSK: Too short GPSK-1 packet");
		return NULL;
	}
	len = FUNC0(pos);
	pos += 2;
	if (len > (size_t) (end - pos)) {
		FUNC2(MSG_DEBUG, "EAP-GPSK: CSuite_List overflow");
		return NULL;
	}
	if (len == 0 || (len % sizeof(struct eap_gpsk_csuite))) {
		FUNC2(MSG_DEBUG, "EAP-GPSK: Invalid CSuite_List len %lu",
			   (unsigned long) len);
		return NULL;
	}

	if (FUNC1(sm, data, pos, len) < 0)
		return NULL;

	*list = pos;
	*list_len = len;
	pos += len;

	return pos;
}