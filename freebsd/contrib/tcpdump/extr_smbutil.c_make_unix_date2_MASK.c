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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  time_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static time_t
FUNC2(const u_char *date_ptr)
{
    uint32_t x, x2;

    x = FUNC0(date_ptr);
    x2 = ((x & 0xFFFF) << 16) | ((x & 0xFFFF0000) >> 16);
    return FUNC1(x2);
}