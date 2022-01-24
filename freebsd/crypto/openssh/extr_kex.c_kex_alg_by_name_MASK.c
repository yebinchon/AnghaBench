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
struct kexalg {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 struct kexalg* kexalgs ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static const struct kexalg *
FUNC1(const char *name)
{
	const struct kexalg *k;

	for (k = kexalgs; k->name != NULL; k++) {
		if (FUNC0(k->name, name) == 0)
			return k;
	}
	return NULL;
}