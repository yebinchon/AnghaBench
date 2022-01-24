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
struct eap_sm {TYPE_1__* m; int /*<<< orphan*/ * eap_method_priv; int /*<<< orphan*/  selectedMethod; int /*<<< orphan*/ * ext_pw_buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* deinit ) (struct eap_sm*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC3(struct eap_sm *sm, const char *txt)
{
	FUNC0(sm->ext_pw_buf);
	sm->ext_pw_buf = NULL;

	if (sm->m == NULL || sm->eap_method_priv == NULL)
		return;

	FUNC2(MSG_DEBUG, "EAP: deinitialize previously used EAP method "
		   "(%d, %s) at %s", sm->selectedMethod, sm->m->name, txt);
	sm->m->deinit(sm, sm->eap_method_priv);
	sm->eap_method_priv = NULL;
	sm->m = NULL;
}