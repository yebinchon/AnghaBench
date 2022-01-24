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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int,int,int,int,int) ; 
 int /*<<< orphan*/  pcicfg_mtx ; 

__attribute__((used)) static void
FUNC7(int bus, int slot, int func, int reg, int data, int bytes)
{
	int port;

	FUNC0(&pcicfg_mtx);
	port = FUNC6(bus, slot, func, reg, bytes);
	if (port != 0) {
		switch (bytes) {
		case 1:
			FUNC2(port, data);
			break;
		case 2:
			FUNC4(port, data);
			break;
		case 4:
			FUNC3(port, data);
			break;
		}
		FUNC5();
	}
	FUNC1(&pcicfg_mtx);
}