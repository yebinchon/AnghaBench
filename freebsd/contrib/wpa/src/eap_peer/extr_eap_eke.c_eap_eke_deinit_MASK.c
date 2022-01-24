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
struct eap_eke_data {int /*<<< orphan*/  msgs; int /*<<< orphan*/  peerid; int /*<<< orphan*/  serverid; int /*<<< orphan*/  sess; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eap_eke_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct eap_sm *sm, void *priv)
{
	struct eap_eke_data *data = priv;
	FUNC1(&data->sess);
	FUNC2(data->serverid);
	FUNC2(data->peerid);
	FUNC3(data->msgs);
	FUNC0(data, sizeof(*data));
}