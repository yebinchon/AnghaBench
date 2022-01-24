#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_hour; int tm_min; int tm_year; int tm_mon; int tm_mday; } ;
struct timeval {int /*<<< orphan*/  tv_sec; } ;
struct iovec {char* iov_base; int iov_len; } ;
struct TYPE_3__ {char* l_name; } ;
typedef  TYPE_1__ CTL_MSG ;

/* Variables and functions */
 int FAILED ; 
 int N_CHARS ; 
 int N_LINES ; 
 scalar_t__ RING_WAIT ; 
 int SUCCESS ; 
 int /*<<< orphan*/  VIS_CSTYLE ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 
 char* hostname ; 
 struct tm* FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,...) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct iovec*,int,char const*,scalar_t__) ; 

int
FUNC8(const char *tty, CTL_MSG *request,
    const char *remote_machine)
{
	struct timeval now;
	time_t clock_sec;
	struct tm *localclock;
	struct iovec iovec;
	char line_buf[N_LINES][N_CHARS];
	int sizes[N_LINES];
	char big_buf[N_LINES*N_CHARS];
	char *bptr, *lptr, *vis_user;
	int i, j, max_size;

	i = 0;
	max_size = 0;
	FUNC0(&now, NULL);
	clock_sec = now.tv_sec;
	localclock = FUNC1(&clock_sec);
	(void)FUNC4(line_buf[i], N_CHARS, " ");
	sizes[i] = FUNC5(line_buf[i]);
	max_size = FUNC3(max_size, sizes[i]);
	i++;
	(void)FUNC4(line_buf[i], N_CHARS,
		"Message from Talk_Daemon@%s at %d:%02d on %d/%.2d/%.2d ...",
		hostname, localclock->tm_hour , localclock->tm_min,
		localclock->tm_year + 1900, localclock->tm_mon + 1,
		localclock->tm_mday);
	sizes[i] = FUNC5(line_buf[i]);
	max_size = FUNC3(max_size, sizes[i]);
	i++;

	vis_user = FUNC2(FUNC5(request->l_name) * 4 + 1);
	FUNC6(vis_user, request->l_name, VIS_CSTYLE);
	(void)FUNC4(line_buf[i], N_CHARS,
	    "talk: connection requested by %s@%s", vis_user, remote_machine);
	sizes[i] = FUNC5(line_buf[i]);
	max_size = FUNC3(max_size, sizes[i]);
	i++;
	(void)FUNC4(line_buf[i], N_CHARS, "talk: respond with:  talk %s@%s",
	    vis_user, remote_machine);
	sizes[i] = FUNC5(line_buf[i]);
	max_size = FUNC3(max_size, sizes[i]);
	i++;
	(void)FUNC4(line_buf[i], N_CHARS, " ");
	sizes[i] = FUNC5(line_buf[i]);
	max_size = FUNC3(max_size, sizes[i]);
	i++;
	bptr = big_buf;
	*bptr++ = '\007'; /* send something to wake them up */
	*bptr++ = '\r';	/* add a \r in case of raw mode */
	*bptr++ = '\n';
	for (i = 0; i < N_LINES; i++) {
		/* copy the line into the big buffer */
		lptr = line_buf[i];
		while (*lptr != '\0')
			*(bptr++) = *(lptr++);
		/* pad out the rest of the lines with blanks */
		for (j = sizes[i]; j < max_size + 2; j++)
			*(bptr++) = ' ';
		*(bptr++) = '\r';	/* add a \r in case of raw mode */
		*(bptr++) = '\n';
	}
	*bptr = '\0';
	iovec.iov_base = big_buf;
	iovec.iov_len = bptr - big_buf;
	/*
	 * we choose a timeout of RING_WAIT-5 seconds so that we don't
	 * stack up processes trying to write messages to a tty
	 * that is permanently blocked.
	 */
	if (FUNC7(&iovec, 1, tty, RING_WAIT - 5) != NULL)
		return (FAILED);

	return (SUCCESS);
}