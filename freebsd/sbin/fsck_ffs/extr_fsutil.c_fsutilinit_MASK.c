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
struct timeval {int dummy; } ;
struct timespec {int dummy; } ;
struct bufarea {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bufhead ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  cgblk ; 
 int /*<<< orphan*/ * cgbufs ; 
 scalar_t__ diskreads ; 
 int /*<<< orphan*/  finishpass ; 
 scalar_t__ flushtries ; 
 scalar_t__ numbufs ; 
 int slowio_delay_usec ; 
 scalar_t__ slowio_pollcnt ; 
 int /*<<< orphan*/  slowio_starttime ; 
 int /*<<< orphan*/  startpass ; 
 scalar_t__ totaldiskreads ; 
 scalar_t__ totalreads ; 

void
FUNC2(void)
{
	diskreads = totaldiskreads = totalreads = 0;
	FUNC1(&startpass, sizeof(struct timespec));
	FUNC1(&finishpass, sizeof(struct timespec));
	FUNC1(&slowio_starttime, sizeof(struct timeval));
	slowio_delay_usec = 10000;
	slowio_pollcnt = 0;
	FUNC1(&cgblk, sizeof(struct bufarea));
	FUNC0(&bufhead);
	numbufs = 0;
	/* buftype ? */
	cgbufs = NULL;
	flushtries = 0;
}