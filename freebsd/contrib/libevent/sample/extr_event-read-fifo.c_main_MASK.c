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
struct stat {int st_mode; } ;
struct event_base {int dummy; } ;
struct event {int dummy; } ;
typedef  int evutil_socket_t ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EEXIST ; 
 int EV_PERSIST ; 
 int EV_READ ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  SIGINT ; 
 int S_IFMT ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (struct event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC5 (struct event_base*) ; 
 struct event_base* FUNC6 () ; 
 struct event* FUNC7 (struct event_base*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct event* FUNC9 (struct event_base*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct event_base*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  fifo_read ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (char const*,struct stat*) ; 
 int FUNC14 (char const*,int) ; 
 int FUNC15 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  signal_cb ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC17 (char const*) ; 

int
FUNC18(int argc, char **argv)
{
	struct event *evfifo;
	struct event_base* base;
#ifdef _WIN32
	HANDLE socket;
	/* Open a file. */
	socket = CreateFileA("test.txt",	/* open File */
			GENERIC_READ,		/* open for reading */
			0,			/* do not share */
			NULL,			/* no security */
			OPEN_EXISTING,		/* existing file only */
			FILE_ATTRIBUTE_NORMAL,	/* normal file */
			NULL);			/* no attr. template */

	if (socket == INVALID_HANDLE_VALUE)
		return 1;

#else
	struct event *signal_int;
	struct stat st;
	const char *fifo = "event.fifo";
	int socket;

	if (FUNC13(fifo, &st) == 0) {
		if ((st.st_mode & S_IFMT) == S_IFREG) {
			errno = EEXIST;
			FUNC16("lstat");
			FUNC10(1);
		}
	}

	FUNC17(fifo);
	if (FUNC14(fifo, 0600) == -1) {
		FUNC16("mkfifo");
		FUNC10(1);
	}

	socket = FUNC15(fifo, O_RDONLY | O_NONBLOCK, 0);

	if (socket == -1) {
		FUNC16("open");
		FUNC10(1);
	}

	FUNC11(stderr, "Write data to %s\n", fifo);
#endif
	/* Initalize the event library */
	base = FUNC6();

	/* Initalize one event */
#ifdef _WIN32
	evfifo = event_new(base, (evutil_socket_t)socket, EV_READ|EV_PERSIST, fifo_read,
                           event_self_cbarg());
#else
	/* catch SIGINT so that event.fifo can be cleaned up */
	signal_int = FUNC9(base, SIGINT, signal_cb, base);
	FUNC3(signal_int, NULL);

	evfifo = FUNC7(base, socket, EV_READ|EV_PERSIST, fifo_read,
                           FUNC8());
#endif

	/* Add it to the active events, without a timeout */
	FUNC3(evfifo, NULL);

	FUNC4(base);
	FUNC5(base);
#ifdef _WIN32
	CloseHandle(socket);
#else
	FUNC2(socket);
	FUNC17(fifo);
#endif
	FUNC12();
	return (0);
}