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
struct timespec {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  TYPE_1__* mqd_t ;
struct TYPE_3__ {int /*<<< orphan*/  oshandle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t,unsigned int*,struct timespec const*) ; 

ssize_t
FUNC1(mqd_t mqd, char *buf, size_t len,
	unsigned *prio, const struct timespec *timeout)
{

	return FUNC0(mqd->oshandle, buf, len, prio, timeout);
}