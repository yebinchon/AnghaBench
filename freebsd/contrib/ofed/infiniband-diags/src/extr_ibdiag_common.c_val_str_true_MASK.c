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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(const char *val_str)
{
	return ((FUNC1(val_str, "TRUE", FUNC0("TRUE")) == 0) ||
		(FUNC1(val_str, "true", FUNC0("true")) == 0));
}