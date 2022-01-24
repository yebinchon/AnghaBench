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
struct eap_gpsk_data {scalar_t__ psk; int /*<<< orphan*/  psk_len; scalar_t__ id_peer; scalar_t__ id_server; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eap_gpsk_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct eap_sm *sm, void *priv)
{
	struct eap_gpsk_data *data = priv;
	FUNC1(data->id_server);
	FUNC1(data->id_peer);
	if (data->psk) {
		FUNC2(data->psk, 0, data->psk_len);
		FUNC1(data->psk);
	}
	FUNC0(data, sizeof(*data));
}