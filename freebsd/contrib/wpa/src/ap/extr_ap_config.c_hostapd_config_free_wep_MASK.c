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
struct hostapd_wep_keys {int /*<<< orphan*/ ** key; int /*<<< orphan*/ * len; } ;

/* Variables and functions */
 int NUM_WEP_KEYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct hostapd_wep_keys *keys)
{
	int i;
	for (i = 0; i < NUM_WEP_KEYS; i++) {
		FUNC0(keys->key[i], keys->len[i]);
		keys->key[i] = NULL;
	}
}