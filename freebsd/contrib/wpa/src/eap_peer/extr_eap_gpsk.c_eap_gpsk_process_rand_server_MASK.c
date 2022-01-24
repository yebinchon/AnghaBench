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
struct eap_gpsk_data {int /*<<< orphan*/  rand_server; } ;

/* Variables and functions */
 int EAP_GPSK_RAND_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static const u8 * FUNC3(struct eap_gpsk_data *data,
					       const u8 *pos, const u8 *end)
{
	if (pos == NULL)
		return NULL;

	if (end - pos < EAP_GPSK_RAND_LEN) {
		FUNC2(MSG_DEBUG, "EAP-GPSK: RAND_Server overflow");
		return NULL;
	}
	FUNC0(data->rand_server, pos, EAP_GPSK_RAND_LEN);
	FUNC1(MSG_DEBUG, "EAP-GPSK: RAND_Server",
		    data->rand_server, EAP_GPSK_RAND_LEN);
	pos += EAP_GPSK_RAND_LEN;

	return pos;
}