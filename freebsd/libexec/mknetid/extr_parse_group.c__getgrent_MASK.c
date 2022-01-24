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
struct group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  _gr_fp ; 
 struct group _gr_group ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

struct group *
FUNC2(void)
{
	if (!_gr_fp && !FUNC1()) {
		return NULL;
	}


	if (!FUNC0(0, 0))
		return(NULL);
	return(&_gr_group);
}