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
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_fast_data {int /*<<< orphan*/ * phase2_priv; TYPE_1__* phase2_method; } ;
struct TYPE_2__ {struct wpabuf* (* buildReq ) (struct eap_sm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 struct wpabuf* FUNC0 (struct wpabuf*) ; 
 struct wpabuf* FUNC1 (struct eap_sm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct wpabuf * FUNC4(struct eap_sm *sm,
						 struct eap_fast_data *data,
						 u8 id)
{
	struct wpabuf *req;

	if (data->phase2_priv == NULL) {
		FUNC3(MSG_DEBUG, "EAP-FAST: Phase 2 method not "
			   "initialized");
		return NULL;
	}
	req = data->phase2_method->buildReq(sm, data->phase2_priv, id);
	if (req == NULL)
		return NULL;

	FUNC2(MSG_MSGDUMP, "EAP-FAST: Phase 2 EAP-Request", req);
	return FUNC0(req);
}