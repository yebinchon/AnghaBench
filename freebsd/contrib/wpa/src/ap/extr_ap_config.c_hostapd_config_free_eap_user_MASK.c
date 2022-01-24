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
struct hostapd_eap_user {int /*<<< orphan*/  salt_len; int /*<<< orphan*/  salt; int /*<<< orphan*/  password_len; int /*<<< orphan*/  password; struct hostapd_eap_user* identity; int /*<<< orphan*/  accept_attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_eap_user*) ; 

void FUNC3(struct hostapd_eap_user *user)
{
	FUNC1(user->accept_attr);
	FUNC2(user->identity);
	FUNC0(user->password, user->password_len);
	FUNC0(user->salt, user->salt_len);
	FUNC2(user);
}