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
struct ext_password_data {int dummy; } ;
struct eap_sm {struct ext_password_data* ext_pw; int /*<<< orphan*/ * ext_pw_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct eap_sm *sm, struct ext_password_data *ext)
{
	FUNC0(sm->ext_pw_buf);
	sm->ext_pw_buf = NULL;
	sm->ext_pw = ext;
}