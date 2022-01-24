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
typedef  int /*<<< orphan*/  bitstr_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char,...) ; 

__attribute__((used)) static void
FUNC4(FILE *file, bitstr_t *b, int n)
{
	int i;
	int jc, js;

	FUNC0(b, n, &jc);
	FUNC1(b, n, &js);

	(void) FUNC3(file, "%3d %3d ", jc, js);

	for (i=0; i < n; i++) {
		(void) FUNC3(file, "%c", (FUNC2(b, i) ? '1' : '0'));
	}

	(void) FUNC3(file, "%c", '\n');
}