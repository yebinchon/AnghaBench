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
struct eap_teap_pac {struct eap_teap_pac* next; } ;
struct eap_teap_data {struct eap_teap_pac* pac; int /*<<< orphan*/  ssl; struct eap_teap_data* phase2_types; scalar_t__ phase2_priv; TYPE_1__* phase2_method; } ;
struct eap_sm {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* deinit ) (struct eap_sm*,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eap_sm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_teap_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_teap_pac*) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_teap_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_sm*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct eap_sm *sm, void *priv)
{
	struct eap_teap_data *data = priv;
	struct eap_teap_pac *pac, *prev;

	if (!data)
		return;
	if (data->phase2_priv && data->phase2_method)
		data->phase2_method->deinit(sm, data->phase2_priv);
	FUNC1(data);
	FUNC3(data->phase2_types);
	FUNC0(sm, &data->ssl);

	pac = data->pac;
	prev = NULL;
	while (pac) {
		prev = pac;
		pac = pac->next;
		FUNC2(prev);
	}

	FUNC3(data);
}