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
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (size_t,int) ; 
 scalar_t__ FUNC2 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char,size_t) ; 
 char* FUNC5 (char*,char*,size_t) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static void
FUNC7(const char *s)
{
	char *src, *dst;
	size_t size, len, bufsize, x;
	int i, j;

	size = FUNC6(s) + 1;
	for (i = 0; i <= 1; i++) {
		for (j = 0; j <= 1; j++) {
			for (bufsize = 0; bufsize <= size + 10; bufsize++) {
				src = FUNC1(size, i);
				FUNC3(src, s, size);
				dst = FUNC1(bufsize, j);
				FUNC4(dst, 'X', bufsize);
				len = (bufsize < size) ? bufsize : size - 1;
				FUNC0(FUNC5(dst, src, bufsize) == dst+len);
				FUNC0(FUNC2(src, dst, len) == 0);
				for (x = len; x < bufsize; x++)
					FUNC0(dst[x] == '\0');
			}
		}
	}
}