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
struct ikev2_initiator_data {int /*<<< orphan*/  key_pad; int /*<<< orphan*/  r_sign_msg; int /*<<< orphan*/  i_sign_msg; int /*<<< orphan*/  shared_secret; int /*<<< orphan*/  IDr; int /*<<< orphan*/  IDi; int /*<<< orphan*/  i_dh_private; int /*<<< orphan*/  r_dh_public; int /*<<< orphan*/  keys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct ikev2_initiator_data *data)
{
	FUNC0(&data->keys);
	FUNC2(data->r_dh_public);
	FUNC2(data->i_dh_private);
	FUNC1(data->IDi);
	FUNC1(data->IDr);
	FUNC1(data->shared_secret);
	FUNC2(data->i_sign_msg);
	FUNC2(data->r_sign_msg);
	FUNC1(data->key_pad);
}