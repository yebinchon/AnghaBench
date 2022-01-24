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
typedef  scalar_t__ u_int ;

/* Variables and functions */
 scalar_t__ MAXU16 ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*,...) ; 

__attribute__((used)) static int
FUNC1(const char *fname, u_int val, const char *msg)
{
    if (!val) {
	FUNC0("%s: no default %s", fname, msg);
	return -1;
    }
    if (val > MAXU16) {
	FUNC0("%s: illegal %s %d", fname, msg, val);
	return -1;
    }
    return 0;
}