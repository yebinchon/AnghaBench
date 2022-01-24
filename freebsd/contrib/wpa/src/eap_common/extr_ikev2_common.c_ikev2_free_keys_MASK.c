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
struct ikev2_keys {int /*<<< orphan*/ * SK_pr; int /*<<< orphan*/ * SK_pi; int /*<<< orphan*/ * SK_er; int /*<<< orphan*/ * SK_ei; int /*<<< orphan*/ * SK_ar; int /*<<< orphan*/ * SK_ai; int /*<<< orphan*/ * SK_d; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct ikev2_keys *keys)
{
	FUNC0(keys->SK_d);
	FUNC0(keys->SK_ai);
	FUNC0(keys->SK_ar);
	FUNC0(keys->SK_ei);
	FUNC0(keys->SK_er);
	FUNC0(keys->SK_pi);
	FUNC0(keys->SK_pr);
	keys->SK_d = keys->SK_ai = keys->SK_ar = keys->SK_ei = keys->SK_er =
		keys->SK_pi = keys->SK_pr = NULL;
}