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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  HANDLE_DIR ; 
 int /*<<< orphan*/  HANDLE_FILE ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(const u_char *handle, u_int hlen)
{
	int val;

	if (hlen != sizeof(int32_t))
		return -1;
	val = FUNC0(handle);
	if (FUNC1(val, HANDLE_FILE) ||
	    FUNC1(val, HANDLE_DIR))
		return val;
	return -1;
}