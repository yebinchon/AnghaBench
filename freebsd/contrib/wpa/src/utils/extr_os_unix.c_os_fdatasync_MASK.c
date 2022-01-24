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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  F_FULLFSYNC ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(FILE *stream)
{
	if (!FUNC2(stream)) {
#ifdef __linux__
		return FUNC1(FUNC3(stream));
#else /* !__linux__ */
#ifdef F_FULLFSYNC
		/* OS X does not implement fdatasync(). */
		return fcntl(fileno(stream), F_FULLFSYNC);
#else /* F_FULLFSYNC */
		return fsync(fileno(stream));
#endif /* F_FULLFSYNC */
#endif /* __linux__ */
	}

	return -1;
}