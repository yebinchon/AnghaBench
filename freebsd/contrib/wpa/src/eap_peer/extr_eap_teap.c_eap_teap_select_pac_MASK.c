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
typedef  int /*<<< orphan*/  u8 ;
struct eap_teap_data {TYPE_1__* current_pac; int /*<<< orphan*/  pac; } ;
struct TYPE_2__ {int /*<<< orphan*/  a_id_info_len; int /*<<< orphan*/  a_id_info; int /*<<< orphan*/  pac_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  PAC_TYPE_TUNNEL_PAC ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct eap_teap_data *data,
				const u8 *a_id, size_t a_id_len)
{
	if (!a_id)
		return;
	data->current_pac = FUNC0(data->pac, a_id, a_id_len,
					     PAC_TYPE_TUNNEL_PAC);
	if (data->current_pac) {
		FUNC2(MSG_DEBUG,
			   "EAP-TEAP: PAC found for this A-ID (PAC-Type %d)",
			   data->current_pac->pac_type);
		FUNC1(MSG_MSGDUMP, "EAP-TEAP: A-ID-Info",
				  data->current_pac->a_id_info,
				  data->current_pac->a_id_info_len);
	}
}