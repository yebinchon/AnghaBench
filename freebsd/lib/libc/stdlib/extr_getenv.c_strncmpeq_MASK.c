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

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char const*,size_t) ; 

__attribute__((used)) static inline bool
FUNC1(const char *nameValue, const char *name, size_t nameLen)
{
	if (FUNC0(nameValue, name, nameLen) == 0 && nameValue[nameLen] == '=')
		return (true);

	return (false);
}