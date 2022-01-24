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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAP_ANON ; 
 void* MAP_FAILED ; 
 int MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  page ; 

__attribute__((used)) static void *
FUNC4(int v, int f) {
	void *map = FUNC3(NULL, page, PROT_READ|PROT_WRITE,
	    MAP_SHARED|MAP_ANON, -1, 0);
	FUNC0(map != MAP_FAILED);
	FUNC1(map, v, page);
	if (f != 666)
		FUNC0(FUNC2(map, page, f) == 0);
	else
		FUNC0(FUNC2(map, page, f) == -1);
	return map;
}