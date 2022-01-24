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
struct eap_sm {int dummy; } ;
struct eap_fast_data {int /*<<< orphan*/  fast_version; int /*<<< orphan*/  ssl; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_TYPE_FAST ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (struct eap_sm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf*,struct wpabuf**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 

__attribute__((used)) static int FUNC4(struct eap_sm *sm,
				     struct eap_fast_data *data,
				     struct wpabuf *resp,
				     u8 identifier, struct wpabuf **out_data)
{
	if (resp == NULL)
		return 0;

	FUNC1(MSG_DEBUG, "EAP-FAST: Encrypting Phase 2 data",
			resp);
	if (FUNC0(sm, &data->ssl, EAP_TYPE_FAST,
				 data->fast_version, identifier,
				 resp, out_data)) {
		FUNC2(MSG_INFO, "EAP-FAST: Failed to encrypt a Phase 2 "
			   "frame");
	}
	FUNC3(resp);

	return 0;
}