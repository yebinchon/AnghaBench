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
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int buffer ; 
 int /*<<< orphan*/  bufleft ; 
 int /*<<< orphan*/  buflen ; 
 scalar_t__ bufpkt ; 
 int bufpos ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(FILE *f)
{
	off_t offset;
	int len = bufpos - buffer;

	if (len <= 0)
		return (0);

	offset = FUNC1(f);
	if (offset == (off_t)-1) {
		FUNC5(1);
		FUNC4(LOG_ERR, "Logging suspended: ftello: %s",
		    FUNC6(errno));
		return (1);
	}

	if (FUNC3(buffer, len, 1, f) != 1) {
		FUNC5(1);
		FUNC4(LOG_ERR, "Logging suspended: fwrite: %s",
		    FUNC6(errno));
		FUNC2(FUNC0(f), offset);
		return (1);
	}

	FUNC5(0);
	bufpos = buffer;
	bufleft = buflen;
	bufpkt = 0;

	return (0);
}