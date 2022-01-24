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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 scalar_t__ buf ; 
 scalar_t__ len ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/  const*,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(const wchar_t *contents)
{
	if (FUNC1(contents) != len)
		FUNC0("bad length %zd for \"%ls\"\n", len, contents);
	else if (FUNC2(buf, contents, FUNC1(contents)) != 0)
		FUNC0("bad buffer \"%ls\" for \"%ls\"\n", buf, contents);
}