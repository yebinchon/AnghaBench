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
struct eap_aka_data {int /*<<< orphan*/  network_name; int /*<<< orphan*/  id_msgs; int /*<<< orphan*/  next_reauth_id; int /*<<< orphan*/  next_pseudonym; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eap_aka_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct eap_sm *sm, void *priv)
{
	struct eap_aka_data *data = priv;
	FUNC1(data->next_pseudonym);
	FUNC1(data->next_reauth_id);
	FUNC2(data->id_msgs);
	FUNC1(data->network_name);
	FUNC0(data, sizeof(*data));
}