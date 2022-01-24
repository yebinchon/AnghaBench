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
typedef  int /*<<< orphan*/  u8 ;
struct eap_sm {int dummy; } ;
struct eap_pax_data {scalar_t__ state; int /*<<< orphan*/  mid; } ;

/* Variables and functions */
 int EAP_PAX_MID_LEN ; 
 int /*<<< orphan*/  EAP_TYPE_PAX ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u8 * FUNC2(struct eap_sm *sm, void *priv, size_t *len)
{
	struct eap_pax_data *data = priv;
	u8 *sid;

	if (data->state != SUCCESS)
		return NULL;

	sid = FUNC0(1 + EAP_PAX_MID_LEN);
	if (sid == NULL)
		return NULL;

	*len = 1 + EAP_PAX_MID_LEN;
	sid[0] = EAP_TYPE_PAX;
	FUNC1(sid + 1, data->mid, EAP_PAX_MID_LEN);

	return sid;
}