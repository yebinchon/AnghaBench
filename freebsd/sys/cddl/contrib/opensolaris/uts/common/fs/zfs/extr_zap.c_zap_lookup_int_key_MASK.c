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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  longlong_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,char*,int,int,scalar_t__*) ; 

int
FUNC2(objset_t *os, uint64_t obj, uint64_t key, uint64_t *valuep)
{
	char name[20];

	(void) FUNC0(name, sizeof (name), "%llx", (longlong_t)key);
	return (FUNC1(os, obj, name, 8, 1, valuep));
}