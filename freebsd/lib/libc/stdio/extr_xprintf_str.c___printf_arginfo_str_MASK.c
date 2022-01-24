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
struct printf_info {char spec; scalar_t__ is_long; } ;

/* Variables and functions */
 int PA_STRING ; 
 int PA_WSTRING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

int
FUNC1(const struct printf_info *pi, size_t n, int *argt)
{

	FUNC0 (n > 0);
	if (pi->is_long || pi->spec == 'C')
		argt[0] = PA_WSTRING;
	else
		argt[0] = PA_STRING;
	return (1);
}