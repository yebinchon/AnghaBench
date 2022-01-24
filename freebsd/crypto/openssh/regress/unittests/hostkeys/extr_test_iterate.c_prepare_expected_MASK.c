#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ keytype; int /*<<< orphan*/  key; } ;
struct expected {TYPE_1__ l; int /*<<< orphan*/ * key_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ KEY_ECDSA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct expected *expected, size_t n)
{
	size_t i;

	for (i = 0; i < n; i++) {
		if (expected[i].key_file == NULL)
			continue;
#ifndef OPENSSL_HAS_ECC
		if (expected[i].l.keytype == KEY_ECDSA)
			continue;
#endif
		FUNC0(FUNC1(
		    FUNC2(expected[i].key_file), &expected[i].l.key,
		    NULL), 0);
	}
}