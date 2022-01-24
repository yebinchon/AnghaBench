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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int,int,int) ; 

__attribute__((used)) static void FUNC2(FILE *fp, void *buf)
{
	uint32_t *p = buf;
	int i;

	for (i = 0; i < 16; i += 4)
		FUNC1(fp, "%08x %08x %08x %08x\n", FUNC0(p[i]), FUNC0(p[i + 1]),
			FUNC0(p[i + 2]), FUNC0(p[i + 3]));
}