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
struct eap_gpsk_data {int id_server_len; int /*<<< orphan*/ * id_server; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static const u8 * FUNC5(struct eap_gpsk_data *data,
					     const u8 *pos, const u8 *end)
{
	u16 alen;

	if (end - pos < 2) {
		FUNC4(MSG_DEBUG, "EAP-GPSK: Too short GPSK-1 packet");
		return NULL;
	}
	alen = FUNC0(pos);
	pos += 2;
	if (end - pos < alen) {
		FUNC4(MSG_DEBUG, "EAP-GPSK: ID_Server overflow");
		return NULL;
	}
	FUNC1(data->id_server);
	data->id_server = FUNC2(pos, alen);
	if (data->id_server == NULL) {
		FUNC4(MSG_DEBUG, "EAP-GPSK: No memory for ID_Server");
		return NULL;
	}
	data->id_server_len = alen;
	FUNC3(MSG_DEBUG, "EAP-GPSK: ID_Server",
			  data->id_server, data->id_server_len);
	pos += alen;

	return pos;
}