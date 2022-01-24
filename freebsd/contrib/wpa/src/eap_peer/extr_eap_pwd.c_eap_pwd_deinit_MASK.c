#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct eap_sm {int dummy; } ;
struct TYPE_3__ {TYPE_2__* range; } ;
struct eap_pwd_data {int id_peer_len; int id_server_len; int password_len; TYPE_1__ allowed_groups; int /*<<< orphan*/  outbuf; int /*<<< orphan*/  inbuf; TYPE_2__* grp; struct eap_pwd_data* password; struct eap_pwd_data* id_server; struct eap_pwd_data* id_peer; int /*<<< orphan*/  server_element; int /*<<< orphan*/  my_element; int /*<<< orphan*/  k; int /*<<< orphan*/  my_scalar; int /*<<< orphan*/  server_scalar; int /*<<< orphan*/  private_value; } ;
struct TYPE_4__ {int /*<<< orphan*/  pwe; int /*<<< orphan*/  group; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eap_pwd_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct eap_sm *sm, void *priv)
{
	struct eap_pwd_data *data = priv;

	FUNC1(data->private_value, 1);
	FUNC1(data->server_scalar, 1);
	FUNC1(data->my_scalar, 1);
	FUNC1(data->k, 1);
	FUNC3(data->my_element, 1);
	FUNC3(data->server_element, 1);
	FUNC0(data->id_peer, data->id_peer_len);
	FUNC0(data->id_server, data->id_server_len);
	FUNC0(data->password, data->password_len);
	if (data->grp) {
		FUNC2(data->grp->group);
		FUNC3(data->grp->pwe, 1);
		FUNC4(data->grp);
	}
	FUNC5(data->inbuf);
	FUNC5(data->outbuf);
	FUNC4(data->allowed_groups.range);
	FUNC0(data, sizeof(*data));
}