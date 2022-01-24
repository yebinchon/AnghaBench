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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,size_t) ; 
 char* FUNC1 (int /*<<< orphan*/  const*,size_t) ; 
 char* FUNC2 (int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static char * FUNC3(const u8 *value, size_t len)
{
	if (value == NULL)
		return NULL;

	if (FUNC0(value, len))
		return FUNC2(value, len);
	else
		return FUNC1(value, len);
}