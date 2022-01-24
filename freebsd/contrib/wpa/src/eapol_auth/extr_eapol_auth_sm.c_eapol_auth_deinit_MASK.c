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
struct eapol_authenticator {struct eapol_authenticator* default_wep_key; int /*<<< orphan*/  conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct eapol_authenticator*) ; 

void FUNC2(struct eapol_authenticator *eapol)
{
	if (eapol == NULL)
		return;

	FUNC0(&eapol->conf);
	FUNC1(eapol->default_wep_key);
	FUNC1(eapol);
}