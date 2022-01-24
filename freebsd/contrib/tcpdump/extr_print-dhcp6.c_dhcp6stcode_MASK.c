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
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  dh6opt_stcode_str ; 
 char const* FUNC0 (int /*<<< orphan*/ ,char*,int const) ; 

__attribute__((used)) static const char *
FUNC1(const uint16_t code)
{
	return code > 255 ? "INVALID code" : FUNC0(dh6opt_stcode_str, "code%u", code);
}