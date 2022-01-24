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
struct sshkey {scalar_t__ type; int /*<<< orphan*/  cert; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sshkey const*,struct sshkey const*) ; 
 scalar_t__ FUNC2 (struct sshkey const*) ; 

int
FUNC3(const struct sshkey *a, const struct sshkey *b)
{
	if (a == NULL || b == NULL || a->type != b->type)
		return 0;
	if (FUNC2(a)) {
		if (!FUNC0(a->cert, b->cert))
			return 0;
	}
	return FUNC1(a, b);
}