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
struct passwd {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,struct passwd*,int,int /*<<< orphan*/ ,char*) ; 

FILE *
FUNC1(const char *file, struct passwd *pw, int strict_modes)
{
	return FUNC0(file, pw, strict_modes, 0,
	    "authorized principals");
}