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
struct sshkey {int /*<<< orphan*/  type; int /*<<< orphan*/ * cert; } ;

/* Variables and functions */
 int SSH_ERR_KEY_TYPE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(struct sshkey *k)
{
	if (!FUNC1(k->type))
		return SSH_ERR_KEY_TYPE_UNKNOWN;
	FUNC0(k->cert);
	k->cert = NULL;
	k->type = FUNC2(k->type);
	return 0;
}