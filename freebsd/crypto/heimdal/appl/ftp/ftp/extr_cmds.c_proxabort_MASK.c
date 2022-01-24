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
typedef  int /*<<< orphan*/  RETSIGTYPE ;

/* Variables and functions */
 int /*<<< orphan*/  abortprox ; 
 scalar_t__ connected ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int proxflag ; 
 int /*<<< orphan*/  proxy ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static RETSIGTYPE
FUNC2(int sig)
{

	if (!proxy) {
		FUNC1(1);
	}
	if (connected) {
		proxflag = 1;
	}
	else {
		proxflag = 0;
	}
	FUNC1(0);
	FUNC0(abortprox,1);
}