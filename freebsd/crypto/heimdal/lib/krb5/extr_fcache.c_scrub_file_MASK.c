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
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6 (int fd)
{
    off_t pos;
    char buf[128];

    pos = FUNC2(fd, 0, SEEK_END);
    if (pos < 0)
        return errno;
    if (FUNC2(fd, 0, SEEK_SET) < 0)
        return errno;
    FUNC3(buf, 0, sizeof(buf));
    while(pos > 0) {
        ssize_t tmp = FUNC5(fd, buf, FUNC4((off_t)sizeof(buf), pos));

	if (tmp < 0)
	    return errno;
	pos -= tmp;
    }
#ifdef _MSC_VER
    _commit (fd);
#else
    FUNC1 (fd);
#endif
    return 0;
}