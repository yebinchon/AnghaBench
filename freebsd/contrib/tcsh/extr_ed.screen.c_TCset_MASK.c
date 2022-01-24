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
struct termcapstr {int /*<<< orphan*/ * str; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void
FUNC4(struct termcapstr *t, const char *cap)
{
    if (cap == NULL || *cap == '\0') {
	FUNC2(t->str);
	t->str = NULL;
    } else {
	size_t size;

	size = FUNC1(cap) + 1;
	t->str = FUNC3(t->str, size);
	FUNC0(t->str, cap, size);
    }
}