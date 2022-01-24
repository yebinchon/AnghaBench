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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (char const*,int,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static void
FUNC6(const char *fn, const char *s)
{
    FILE *f;
    f = FUNC2(fn, "w");
    if(f == NULL) {
	FUNC5(fn);
	FUNC0(1, "fopen");
    }
    if(FUNC3(s, 1, FUNC4(s), f) != FUNC4(s))
	FUNC0(1, "short write");
    if(FUNC1(f) != 0) {
	FUNC5(fn);
	FUNC0(1, "fclose");
    }
}