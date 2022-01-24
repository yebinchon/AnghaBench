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
struct eap_mschapv2_data {int /*<<< orphan*/  peer_challenge; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eap_mschapv2_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct eap_sm *sm, void *priv)
{
	struct eap_mschapv2_data *data = priv;
	if (data == NULL)
		return;

	FUNC1(data->peer_challenge);
	FUNC0(data, sizeof(*data));
}