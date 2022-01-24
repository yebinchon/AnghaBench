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
struct eap_sm {int dummy; } ;
struct eap_aka_data {int prev_id; scalar_t__ kdf_negotiation; scalar_t__ use_result_ind; int /*<<< orphan*/ * id_msgs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLEAR_EAP_ID ; 
 int /*<<< orphan*/  FUNC0 (struct eap_sm*,struct eap_aka_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_aka_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct eap_sm *sm, void *priv)
{
	struct eap_aka_data *data = priv;
	FUNC0(sm, data, CLEAR_EAP_ID);
	data->prev_id = -1;
	FUNC2(data->id_msgs);
	data->id_msgs = NULL;
	data->use_result_ind = 0;
	data->kdf_negotiation = 0;
	FUNC1(data, 1);
}