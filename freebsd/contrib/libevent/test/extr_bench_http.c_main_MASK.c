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
struct timeval {int member_0; int /*<<< orphan*/  member_1; } ;
struct evhttp {int dummy; } ;
struct event_config {int dummy; } ;
struct event_base {int dummy; } ;
typedef  int ev_uint16_t ;
typedef  int /*<<< orphan*/  WSADATA ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_BASE_FLAG_STARTUP_IOCP ; 
 int /*<<< orphan*/  SIGPIPE ; 
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int* content ; 
 scalar_t__ content_len ; 
 int /*<<< orphan*/  FUNC2 (struct event_base*) ; 
 char* FUNC3 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC4 (struct event_base*,struct timeval*) ; 
 struct event_base* FUNC5 (struct event_config*) ; 
 struct event_config* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct event_config*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct evhttp*,char*,int) ; 
 struct evhttp* FUNC9 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC10 (struct evhttp*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  http_basic_cb ; 
 int /*<<< orphan*/  http_ref_cb ; 
 int* FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC16 (char*,char**,int) ; 

int
FUNC17(int argc, char **argv)
{
	struct event_config *cfg = FUNC6();
	struct event_base *base;
	struct evhttp *http;
	int i;
	int c;
	int use_iocp = 0;
	ev_uint16_t port = 8080;
	char *endptr = NULL;

#ifdef _WIN32
	WSADATA WSAData;
	WSAStartup(0x101, &WSAData);
#else
	if (FUNC15(SIGPIPE, SIG_IGN) == SIG_ERR)
		return (1);
#endif

	for (i = 1; i < argc; ++i) {
		if (*argv[i] != '-')
			continue;

		c = argv[i][1];

		if ((c == 'p' || c == 'l') && i + 1 >= argc) {
			FUNC13(stderr, "-%c requires argument.\n", c);
			FUNC12(1);
		}

		switch (c) {
		case 'p':
			if (i+1 >= argc || !argv[i+1]) {
				FUNC13(stderr, "Missing port\n");
				FUNC12(1);
			}
			port = (int)FUNC16(argv[i+1], &endptr, 10);
			if (*endptr != '\0') {
				FUNC13(stderr, "Bad port\n");
				FUNC12(1);
			}
			break;
		case 'l':
			if (i+1 >= argc || !argv[i+1]) {
				FUNC13(stderr, "Missing content length\n");
				FUNC12(1);
			}
			content_len = (size_t)FUNC16(argv[i+1], &endptr, 10);
			if (*endptr != '\0' || content_len == 0) {
				FUNC13(stderr, "Bad content length\n");
				FUNC12(1);
			}
			break;
#ifdef _WIN32
		case 'i':
			use_iocp = 1;
#ifdef EVTHREAD_USE_WINDOWS_THREADS_IMPLEMENTED
			evthread_use_windows_threads();
#endif
			event_config_set_flag(cfg,EVENT_BASE_FLAG_STARTUP_IOCP);
			break;
#endif
		default:
			FUNC13(stderr, "Illegal argument \"%c\"\n", c);
			FUNC12(1);
		}
	}

	base = FUNC5(cfg);
	if (!base) {
		FUNC13(stderr, "creating event_base failed. Exiting.\n");
		return 1;
	}

	http = FUNC9(base);

	content = FUNC14(content_len);
	if (content == NULL) {
		FUNC13(stderr, "Cannot allocate content\n");
		FUNC12(1);
	} else {
		int i = 0;
		for (i = 0; i < (int)content_len; ++i)
			content[i] = (i & 255);
	}

	FUNC10(http, "/ind", http_basic_cb, NULL);
	FUNC13(stderr, "/ind - basic content (memory copy)\n");

	FUNC10(http, "/ref", http_ref_cb, NULL);
	FUNC13(stderr, "/ref - basic content (reference)\n");

	FUNC13(stderr, "Serving %d bytes on port %d using %s\n",
	    (int)content_len, port,
	    use_iocp? "IOCP" : FUNC3(base));

	FUNC8(http, "0.0.0.0", port);

#ifdef _WIN32
	if (use_iocp) {
		struct timeval tv={99999999,0};
		event_base_loopexit(base, &tv);
	}
#endif
	FUNC2(base);

#ifdef _WIN32
	WSACleanup();
#endif

	/* NOTREACHED */
	return (0);
}