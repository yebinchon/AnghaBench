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
struct eap_user {int /*<<< orphan*/ * salt; int /*<<< orphan*/  salt_len; int /*<<< orphan*/ * password; int /*<<< orphan*/  password_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_user*) ; 

void FUNC2(struct eap_user *user)
{
	if (user == NULL)
		return;
	FUNC0(user->password, user->password_len);
	user->password = NULL;
	FUNC0(user->salt, user->salt_len);
	user->salt = NULL;
	FUNC1(user);
}