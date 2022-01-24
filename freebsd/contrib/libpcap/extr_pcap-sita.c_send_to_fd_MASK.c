#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int fd; int find_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIND ; 
 int /*<<< orphan*/  LIVE ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int*,int*,int /*<<< orphan*/ *) ; 
 TYPE_1__** units ; 
 int FUNC3 (int,unsigned char*,int) ; 

__attribute__((used)) static void FUNC4(int fd, int len, unsigned char *str) {
	int		nwritten;
	int		chassis, geoslot;

	while (len > 0) {
		if ((nwritten = FUNC3(fd, str, len)) <= 0) {
			FUNC2(fd, &chassis, &geoslot, NULL);
			if (units[chassis][geoslot].fd == fd)			FUNC0(chassis, geoslot, LIVE);
			else if (units[chassis][geoslot].find_fd == fd)	FUNC0(chassis, geoslot, FIND);
			FUNC1(chassis, geoslot);
			return;
		}
		len -= nwritten;
		str += nwritten;
	}
}