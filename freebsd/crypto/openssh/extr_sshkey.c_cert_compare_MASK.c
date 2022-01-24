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
struct sshkey_cert {int /*<<< orphan*/  certblob; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC3(struct sshkey_cert *a, struct sshkey_cert *b)
{
	if (a == NULL && b == NULL)
		return 1;
	if (a == NULL || b == NULL)
		return 0;
	if (FUNC0(a->certblob) != FUNC0(b->certblob))
		return 0;
	if (FUNC2(FUNC1(a->certblob), FUNC1(b->certblob),
	    FUNC0(a->certblob)) != 0)
		return 0;
	return 1;
}