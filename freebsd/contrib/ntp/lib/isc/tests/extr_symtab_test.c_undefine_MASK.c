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
struct TYPE_3__ {char* as_pointer; } ;
typedef  TYPE_1__ isc_symvalue_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mctx ; 

__attribute__((used)) static void
FUNC3(char *key, unsigned int type, isc_symvalue_t value, void *arg) {
	FUNC1(arg);

	FUNC0(type, 1);
	FUNC2(mctx, key);
	FUNC2(mctx, value.as_pointer);
}