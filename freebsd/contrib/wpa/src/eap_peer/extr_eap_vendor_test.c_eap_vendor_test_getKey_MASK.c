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
struct eap_vendor_test_data {scalar_t__ state; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int const) ; 

__attribute__((used)) static u8 * FUNC2(struct eap_sm *sm, void *priv, size_t *len)
{
	struct eap_vendor_test_data *data = priv;
	u8 *key;
	const int key_len = 64;

	if (data->state != SUCCESS)
		return NULL;

	key = FUNC0(key_len);
	if (key == NULL)
		return NULL;

	FUNC1(key, 0x11, key_len / 2);
	FUNC1(key + key_len / 2, 0x22, key_len / 2);
	*len = key_len;

	return key;
}