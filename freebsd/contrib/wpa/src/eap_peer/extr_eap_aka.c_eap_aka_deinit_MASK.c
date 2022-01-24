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
struct eap_aka_data {struct eap_aka_data* network_name; int /*<<< orphan*/  id_msgs; struct eap_aka_data* last_eap_identity; struct eap_aka_data* reauth_id; struct eap_aka_data* pseudonym; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eap_aka_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_aka_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct eap_sm *sm, void *priv)
{
	struct eap_aka_data *data = priv;
	if (data) {
		FUNC1(data->pseudonym);
		FUNC1(data->reauth_id);
		FUNC1(data->last_eap_identity);
		FUNC2(data->id_msgs);
		FUNC1(data->network_name);
		FUNC0(data, 0);
		FUNC1(data);
	}
}