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
struct open_file {int /*<<< orphan*/ * f_devdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(struct open_file *f)
{

	FUNC0(f->f_devdata);
	f->f_devdata = NULL;
	return (0);
}