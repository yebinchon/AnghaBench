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
struct wpabuf {int dummy; } ;
struct eap_teap_pac {int dummy; } ;
struct eap_teap_data {scalar_t__ provisioning; int /*<<< orphan*/  pac; scalar_t__ use_pac_binary_format; int /*<<< orphan*/  max_pac_list_len; int /*<<< orphan*/  current_pac; } ;
struct eap_sm {int dummy; } ;
struct eap_peer_config {int /*<<< orphan*/  pac_file; } ;
struct eap_method_ret {int dummy; } ;
typedef  int /*<<< orphan*/  entry ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 struct eap_peer_config* FUNC0 (struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct eap_teap_pac*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct eap_teap_pac*) ; 
 scalar_t__ FUNC4 (struct eap_teap_pac*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct eap_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct eap_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct eap_teap_pac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static struct wpabuf * FUNC10(struct eap_sm *sm,
					    struct eap_teap_data *data,
					    struct eap_method_ret *ret,
					    u8 *pac, size_t pac_len)
{
	struct eap_peer_config *config = FUNC0(sm);
	struct eap_teap_pac entry;

	FUNC8(&entry, 0, sizeof(entry));
	if (FUNC4(&entry, pac, pac_len) ||
	    FUNC3(&entry))
		return NULL;

	FUNC1(&data->pac, &data->current_pac, &entry);
	FUNC2(data->pac, data->max_pac_list_len);
	if (data->use_pac_binary_format)
		FUNC6(sm, data->pac, config->pac_file);
	else
		FUNC5(sm, data->pac, config->pac_file);

	FUNC9(MSG_DEBUG,
		   "EAP-TEAP: Send PAC-Acknowledgement - %s initiated provisioning completed successfully",
		   data->provisioning ? "peer" : "server");
	return FUNC7();
}