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
typedef  int u16 ;
struct eap_gpsk_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static const u8 * FUNC3(struct eap_gpsk_data *data,
						 const u8 *pos, const u8 *end)
{
	u16 alen;

	if (pos == NULL)
		return NULL;

	if (end - pos < 2) {
		FUNC2(MSG_DEBUG, "EAP-GPSK: Message too short for "
			   "PD_Payload_2 length");
		return NULL;
	}
	alen = FUNC0(pos);
	pos += 2;
	if (end - pos < alen) {
		FUNC2(MSG_DEBUG, "EAP-GPSK: Message too short for "
			   "%d-octet PD_Payload_2", alen);
		return NULL;
	}
	FUNC1(MSG_DEBUG, "EAP-GPSK: PD_Payload_2", pos, alen);
	pos += alen;

	return pos;
}