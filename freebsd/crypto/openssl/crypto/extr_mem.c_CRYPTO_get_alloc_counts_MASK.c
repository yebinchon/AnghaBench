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

/* Variables and functions */
 int /*<<< orphan*/  free_count ; 
 int /*<<< orphan*/  malloc_count ; 
 int /*<<< orphan*/  realloc_count ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(int *mcount, int *rcount, int *fcount)
{
    if (mcount != NULL)
        *mcount = FUNC0(&malloc_count);
    if (rcount != NULL)
        *rcount = FUNC0(&realloc_count);
    if (fcount != NULL)
        *fcount = FUNC0(&free_count);
}