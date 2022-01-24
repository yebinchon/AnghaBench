#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_4__ {struct TYPE_4__* al_next; } ;
typedef  TYPE_1__ alist_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 scalar_t__ FUNC0 (char) ; 
 int LOAD_BUFSIZE ; 
 int MAX_URL_LEN ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int FUNC8 (int,char*,int) ; 
 int FUNC9 (char*,size_t,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC10 (char*,char) ; 
 char* FUNC11 (char*) ; 
 int FUNC12 (char*) ; 
 int FUNC13 (int,char*,int) ; 

alist_t *
FUNC14(char *url)
{
	int fd, len, left, port, endhdr, removed, linenum = 0;
	char *s, *t, *u, buffer[LOAD_BUFSIZE], *myurl;
	alist_t *a, *rtop, *rbot;
	size_t avail;
	int error;

	/*
	 * More than this would just be absurd.
	 */
	if (FUNC12(url) > MAX_URL_LEN) {
		FUNC5(stderr, "load_http has a URL > %d bytes?!\n",
			MAX_URL_LEN);
		return NULL;
	}

	fd = -1;
	rtop = NULL;
	rbot = NULL;

	avail = sizeof(buffer);
	error = FUNC9(buffer, avail, "GET %s HTTP/1.0\r\n", url);

	/*
	 * error is always less then avail due to the constraint on
	 * the url length above.
	 */
	avail -= error;

	myurl = FUNC11(url);
	if (myurl == NULL)
		goto done;

	s = myurl + 7;			/* http:// */
	t = FUNC10(s, '/');
	if (t == NULL) {
		FUNC5(stderr, "load_http has a malformed URL '%s'\n", url);
		FUNC6(myurl);
		return NULL;
	}
	*t++ = '\0';

	/*
	 * 10 is the length of 'Host: \r\n\r\n' below.
	 */
	if (FUNC12(s) + FUNC12(buffer) + 10 > sizeof(buffer)) {
		FUNC5(stderr, "load_http has a malformed URL '%s'\n", url);
		FUNC6(myurl);
		return NULL;
	}

	u = FUNC10(s, '@');
	if (u != NULL)
		s = u + 1;		/* AUTH */

	error = FUNC9(buffer + FUNC12(buffer), avail, "Host: %s\r\n\r\n", s);
	if (error >= avail) {
		FUNC5(stderr, "URL is too large: %s\n", url);
		goto done;
	}

	u = FUNC10(s, ':');
	if (u != NULL) {
		*u++ = '\0';
		port = FUNC2(u);
		if (port < 0 || port > 65535)
			goto done;
	} else {
		port = 80;
	}


	fd = FUNC4(s, port);
	if (fd == -1)
		goto done;


	len = FUNC12(buffer);
	if (FUNC13(fd, buffer, len) != len)
		goto done;

	s = buffer;
	endhdr = 0;
	left = sizeof(buffer) - 1;

	while ((len = FUNC8(fd, s, left)) > 0) {
		s[len] = '\0';
		left -= len;
		s += len;

		if (endhdr >= 0) {
			if (endhdr == 0) {
				t = FUNC10(buffer, ' ');
				if (t == NULL)
					continue;
				t++;
				if (*t != '2')
					break;
			}

			u = buffer;
			while ((t = FUNC10(u, '\r')) != NULL) {
				if (t == u) {
					if (*(t + 1) == '\n') {
						u = t + 2;
						endhdr = -1;
						break;
					} else
						t++;
				} else if (*(t + 1) == '\n') {
					endhdr++;
					u = t + 2;
				} else
					u = t + 1;
			}
			if (endhdr >= 0)
				continue;
			removed = (u - buffer) + 1;
			FUNC7(buffer, u, (sizeof(buffer) - left) - removed);
			s -= removed;
			left += removed;
		}

		do {
			t = FUNC10(buffer, '\n');
			if (t == NULL)
				break;

			linenum++;
			*t = '\0';

			/*
			 * Remove comment and continue to the next line if
			 * the comment is at the start of the line.
			 */
			u = FUNC10(buffer, '#');
			if (u != NULL) {
				*u = '\0';
				if (u == buffer)
					continue;
			}

			/*
			 * Trim off tailing white spaces, will include \r
			 */
			for (u = t - 1; (u >= buffer) && FUNC0(*u); u--)
				*u = '\0';

			a = FUNC1(AF_UNSPEC, buffer);
			if (a != NULL) {
				if (rbot != NULL)
					rbot->al_next = a;
				else
					rtop = a;
				rbot = a;
			} else {
				FUNC5(stderr,
					"%s:%d unrecognised content:%s\n",
					url, linenum, buffer);
			}

			t++;
			removed = t - buffer;
			FUNC7(buffer, t, sizeof(buffer) - left - removed);
			s -= removed;
			left += removed;

		} while (1);
	}

done:
	if (myurl != NULL)
		FUNC6(myurl);
	if (fd != -1)
		FUNC3(fd);
	return rtop;
}