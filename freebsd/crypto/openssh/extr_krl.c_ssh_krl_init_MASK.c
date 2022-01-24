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
struct ssh_krl {int /*<<< orphan*/  revoked_certs; int /*<<< orphan*/  revoked_sha1s; int /*<<< orphan*/  revoked_keys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ssh_krl* FUNC2 (int,int) ; 

struct ssh_krl *
FUNC3(void)
{
	struct ssh_krl *krl;

	if ((krl = FUNC2(1, sizeof(*krl))) == NULL)
		return NULL;
	FUNC0(&krl->revoked_keys);
	FUNC0(&krl->revoked_sha1s);
	FUNC1(&krl->revoked_certs);
	return krl;
}