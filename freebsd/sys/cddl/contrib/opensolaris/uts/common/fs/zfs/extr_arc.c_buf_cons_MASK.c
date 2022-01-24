#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  b_evict_lock; } ;
typedef  TYPE_1__ arc_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARC_SPACE_HDRS ; 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(void *vbuf, void *unused, int kmflag)
{
	arc_buf_t *buf = vbuf;

	FUNC1(buf, sizeof (arc_buf_t));
	FUNC2(&buf->b_evict_lock, NULL, MUTEX_DEFAULT, NULL);
	FUNC0(sizeof (arc_buf_t), ARC_SPACE_HDRS);

	return (0);
}