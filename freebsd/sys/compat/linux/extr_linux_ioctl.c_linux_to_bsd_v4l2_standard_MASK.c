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
struct v4l2_standard {int /*<<< orphan*/  reserved; int /*<<< orphan*/  framelines; int /*<<< orphan*/  frameperiod; int /*<<< orphan*/  name; int /*<<< orphan*/  id; int /*<<< orphan*/  index; } ;
struct l_v4l2_standard {int /*<<< orphan*/  reserved; int /*<<< orphan*/  framelines; int /*<<< orphan*/  frameperiod; int /*<<< orphan*/  name; int /*<<< orphan*/  id; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct l_v4l2_standard *lvstd, struct v4l2_standard *vstd)
{
	vstd->index = lvstd->index;
	vstd->id = lvstd->id;
	FUNC0(sizeof(vstd->name) == sizeof(lvstd->name));
	FUNC1(vstd->name, lvstd->name, sizeof(vstd->name));
	vstd->frameperiod = lvstd->frameperiod;
	vstd->framelines = lvstd->framelines;
	FUNC0(sizeof(vstd->reserved) == sizeof(lvstd->reserved));
	FUNC1(vstd->reserved, lvstd->reserved, sizeof(vstd->reserved));
	return (0);
}