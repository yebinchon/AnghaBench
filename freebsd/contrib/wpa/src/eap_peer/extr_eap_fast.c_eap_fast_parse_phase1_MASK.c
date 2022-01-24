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
struct eap_fast_data {int max_pac_list_len; int use_pac_binary_format; void* provisioning_allowed; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 void* FUNC0 (char const*) ; 
 char* FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC3(struct eap_fast_data *data,
				  const char *phase1)
{
	const char *pos;

	pos = FUNC1(phase1, "fast_provisioning=");
	if (pos) {
		data->provisioning_allowed = FUNC0(pos + 18);
		FUNC2(MSG_DEBUG, "EAP-FAST: Automatic PAC provisioning "
			   "mode: %d", data->provisioning_allowed);
	}

	pos = FUNC1(phase1, "fast_max_pac_list_len=");
	if (pos) {
		data->max_pac_list_len = FUNC0(pos + 22);
		if (data->max_pac_list_len == 0)
			data->max_pac_list_len = 1;
		FUNC2(MSG_DEBUG, "EAP-FAST: Maximum PAC list length: %lu",
			   (unsigned long) data->max_pac_list_len);
	}

	pos = FUNC1(phase1, "fast_pac_format=binary");
	if (pos) {
		data->use_pac_binary_format = 1;
		FUNC2(MSG_DEBUG, "EAP-FAST: Using binary format for PAC "
			   "list");
	}
}