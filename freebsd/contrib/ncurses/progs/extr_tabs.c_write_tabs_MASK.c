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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int max_cols ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC2(int *tab_list)
{
    int stop;

    while ((stop = *tab_list++) > 0 && stop <= max_cols) {
	FUNC0((stop == 1) ? "*" : "\t*", stdout);
    };
    /* also show a tab _past_ the stops */
    if (stop < max_cols)
	FUNC0("\t+", stdout);
    FUNC1('\n');
}