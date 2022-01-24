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
struct local_zones {int dummy; } ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct local_zones*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static int
FUNC2(RES* ssl, struct local_zones* zones, char* arg)
{
	if(!FUNC0(zones, arg)) {
		FUNC1(ssl,"error in syntax or out of memory, %s\n", arg);
		return 0;
	}
	return 1;
}