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

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,scalar_t__) ; 

__attribute__((used)) static int
FUNC3(int devno)
{
	char devpath[32];

	FUNC2(devpath, "/dev/rcgd%d%c", devno, FUNC0() + 'a');

	return FUNC1(devpath, O_RDWR, 0);
}