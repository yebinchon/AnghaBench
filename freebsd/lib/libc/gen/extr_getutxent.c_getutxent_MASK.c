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
struct utmpx {int dummy; } ;
struct futx {int dummy; } ;

/* Variables and functions */
 struct utmpx* FUNC0 (struct futx*) ; 
 scalar_t__ FUNC1 (struct futx*) ; 

struct utmpx *
FUNC2(void)
{
	struct futx fu;

	if (FUNC1(&fu) != 0)
		return (NULL);
	return (FUNC0(&fu));
}