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
struct dtfs_file {int dummy; } ;

/* Variables and functions */
 struct dtfs_file* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dtfs_file*,int /*<<< orphan*/ ,int) ; 

struct dtfs_file *
FUNC2()
{
	struct dtfs_file *dff;

	dff = FUNC0(sizeof(struct dtfs_file));
	FUNC1(dff, 0, sizeof(struct dtfs_file));

	return dff;
}