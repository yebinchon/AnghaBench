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
struct umutex {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UMTX_OP_MUTEX_UNLOCK ; 
 int FUNC0 (struct umutex*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC1(struct umutex *mtx)
{

	return (FUNC0(mtx, UMTX_OP_MUTEX_UNLOCK, 0, 0, 0));
}