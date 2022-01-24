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
typedef  double off_t ;

/* Variables and functions */
 double AGE_FACTOR ; 
 int /*<<< orphan*/  MAX_WINSIZE ; 
 scalar_t__ STALL_TIME ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 double bytes_per_second ; 
 float* counter ; 
 float cur_pos ; 
 float end_pos ; 
 char* file ; 
 int /*<<< orphan*/  FUNC1 (char*,int,double) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,float) ; 
 double last_update ; 
 double FUNC3 () ; 
 int FUNC4 (char*,int,char*,...) ; 
 scalar_t__ stalled ; 
 double start ; 
 float start_pos ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  vwrite ; 
 int win_size ; 

void
FUNC7(void)
{
	char buf[MAX_WINSIZE + 1];
	off_t transferred;
	double elapsed, now;
	int percent;
	off_t bytes_left;
	int cur_speed;
	int hours, minutes, seconds;
	int i, len;
	int file_len;

	transferred = *counter - (cur_pos ? cur_pos : start_pos);
	cur_pos = *counter;
	now = FUNC3();
	bytes_left = end_pos - cur_pos;

	if (bytes_left > 0)
		elapsed = now - last_update;
	else {
		elapsed = now - start;
		/* Calculate true total speed when done */
		transferred = end_pos - start_pos;
		bytes_per_second = 0;
	}

	/* calculate speed */
	if (elapsed != 0)
		cur_speed = (transferred / elapsed);
	else
		cur_speed = transferred;

#define AGE_FACTOR 0.9
	if (bytes_per_second != 0) {
		bytes_per_second = (bytes_per_second * AGE_FACTOR) +
		    (cur_speed * (1.0 - AGE_FACTOR));
	} else
		bytes_per_second = cur_speed;

	/* filename */
	buf[0] = '\0';
	file_len = win_size - 35;
	if (file_len > 0) {
		len = FUNC4(buf, file_len + 1, "\r%s", file);
		if (len < 0)
			len = 0;
		if (len >= file_len + 1)
			len = file_len;
		for (i = len; i < file_len; i++)
			buf[i] = ' ';
		buf[file_len] = '\0';
	}

	/* percent of transfer done */
	if (end_pos == 0 || cur_pos == end_pos)
		percent = 100;
	else
		percent = ((float)cur_pos / end_pos) * 100;
	FUNC4(buf + FUNC6(buf), win_size - FUNC6(buf),
	    " %3d%% ", percent);

	/* amount transferred */
	FUNC2(buf + FUNC6(buf), win_size - FUNC6(buf),
	    cur_pos);
	FUNC5(buf, " ", win_size);

	/* bandwidth usage */
	FUNC1(buf + FUNC6(buf), win_size - FUNC6(buf),
	    (off_t)bytes_per_second);
	FUNC5(buf, "/s ", win_size);

	/* ETA */
	if (!transferred)
		stalled += elapsed;
	else
		stalled = 0;

	if (stalled >= STALL_TIME)
		FUNC5(buf, "- stalled -", win_size);
	else if (bytes_per_second == 0 && bytes_left)
		FUNC5(buf, "  --:-- ETA", win_size);
	else {
		if (bytes_left > 0)
			seconds = bytes_left / bytes_per_second;
		else
			seconds = elapsed;

		hours = seconds / 3600;
		seconds -= hours * 3600;
		minutes = seconds / 60;
		seconds -= minutes * 60;

		if (hours != 0)
			FUNC4(buf + FUNC6(buf), win_size - FUNC6(buf),
			    "%d:%02d:%02d", hours, minutes, seconds);
		else
			FUNC4(buf + FUNC6(buf), win_size - FUNC6(buf),
			    "  %02d:%02d", minutes, seconds);

		if (bytes_left > 0)
			FUNC5(buf, " ETA", win_size);
		else
			FUNC5(buf, "    ", win_size);
	}

	FUNC0(vwrite, STDOUT_FILENO, buf, win_size - 1);
	last_update = now;
}