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
struct eap_gpsk_data {size_t id_server_len; int /*<<< orphan*/  const* id_server; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static const u8 * FUNC4(struct eap_gpsk_data *data,
					      const u8 *pos, const u8 *end)
{
	size_t len;

	if (pos == NULL)
		return NULL;

	if (end - pos < (int) 2) {
		FUNC3(MSG_DEBUG, "EAP-GPSK: Message too short for "
			   "length(ID_Server)");
		return NULL;
	}

	len = FUNC0(pos);
	pos += 2;

	if (end - pos < (int) len) {
		FUNC3(MSG_DEBUG, "EAP-GPSK: Message too short for "
			   "ID_Server");
		return NULL;
	}

	if (len != data->id_server_len ||
	    FUNC1(pos, data->id_server, len) != 0) {
		FUNC3(MSG_INFO, "EAP-GPSK: ID_Server did not match with "
			   "the one used in GPSK-1");
		FUNC2(MSG_DEBUG, "EAP-GPSK: ID_Server in GPSK-1",
				  data->id_server, data->id_server_len);
		FUNC2(MSG_DEBUG, "EAP-GPSK: ID_Server in GPSK-3",
				  pos, len);
		return NULL;
	}

	pos += len;

	return pos;
}