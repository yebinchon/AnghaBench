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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char*) ; 
 size_t FUNC4 (int,char*,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(const char *fname)
{
    char	buf[80];
    size_t	hmuch;
    int		fd;
    int		result;
    
    if ((fd = FUNC1(fname, O_RDONLY)) == -1) {
	FUNC3("can't open '%s': %s\n", fname, FUNC5(errno));
	return(-1);
    }

    for (;;) {
	hmuch = FUNC4(fd, buf, sizeof(buf) - 1);
	if (hmuch == -1) {
	    result = -1;
	    break;
	}
	if (hmuch == 0) {
	    result = 0;
	    break;
	}
	buf[hmuch] = 0;
	if (FUNC2(buf)) {
	    result = 1;
	    break;
	}
    }
    FUNC0(fd);
    return(result);
}