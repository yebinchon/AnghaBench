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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (size_t,int) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static void
FUNC5(const wchar_t *s)
{
	wchar_t *s1;
	size_t size, len, bufsize;
	int i;

	size = FUNC2(s) + 1;
	for (i = 0; i <= 1; i++) {
		for (bufsize = 0; bufsize <= size + 10; bufsize++) {
			s1 = FUNC1(bufsize * sizeof(wchar_t), i);
			FUNC4(s1, s, bufsize <= size ? bufsize : size);
			len = (size > bufsize) ? bufsize : size - 1;
			FUNC0(FUNC3(s1, bufsize) == len);
		}
	}
}