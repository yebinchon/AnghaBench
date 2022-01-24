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
typedef  scalar_t__ time_t ;
struct iodesc {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int FUNC1 (void**) ; 

__attribute__((used)) static ssize_t
FUNC2(struct iodesc *desc, void **pkt, time_t timeout)
{
	time_t t;
	void *ptr;
	int ret = -1;

	t = FUNC0();
	while ((FUNC0() - t) < timeout) {
		ret = FUNC1(&ptr);
		if (ret != -1) {
			*pkt = ptr;
			break;
		}
	}
	return (ret);
}