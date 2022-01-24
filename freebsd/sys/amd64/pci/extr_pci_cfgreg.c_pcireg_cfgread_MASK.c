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
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int,int,int,int,int) ; 
 int /*<<< orphan*/  pcicfg_mtx ; 

__attribute__((used)) static int
FUNC7(int bus, int slot, int func, int reg, int bytes)
{
	int data = -1;
	int port;

	FUNC3(&pcicfg_mtx);
	port = FUNC6(bus, slot, func, reg, bytes);
	if (port != 0) {
		switch (bytes) {
		case 1:
			data = FUNC0(port);
			break;
		case 2:
			data = FUNC2(port);
			break;
		case 4:
			data = FUNC1(port);
			break;
		}
		FUNC5();
	}
	FUNC4(&pcicfg_mtx);
	return (data);
}