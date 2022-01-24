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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(const char * msg, uint32_t * v, size_t len)
{
    size_t i;

    FUNC0("%s: (%d) ", msg, (int)len);
    for (i=0; i < len; i++) {
	FUNC0("%s%x", (i > 0? " ":""), v[i]);
    }
    FUNC0("\n");
}