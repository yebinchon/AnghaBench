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
struct pollfd {int fd; int /*<<< orphan*/  events; } ;
struct message {size_t seq; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t,...) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  bind ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct pollfd*,int,int) ; 
 int FUNC3 (int,struct message*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,struct message*,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct message*) ; 
 int /*<<< orphan*/  ss ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int const,int) ; 

__attribute__((used)) static void
FUNC8(const int fd, const char *host, const char *port, size_t n, bool conn,
    bool bug)
{
	int s;
	ssize_t l;
	size_t seq;
	struct message msg;
	struct pollfd pfd;
	socklen_t slen;

	s = FUNC1(host, port, bind, &slen, bug);
	pfd.fd = s;
	pfd.events = POLLIN;

	/* Tell I'm ready */
	FUNC7(fd, false);

	for (seq = 0; seq < n; seq++) {
		if (FUNC2(&pfd, 1, 10000) == -1)
			FUNC0(EXIT_FAILURE, "poll (%s)", FUNC6(errno));
		l = conn ? FUNC3(s, &msg, sizeof(msg), 0) :
		    FUNC4(s, &msg, sizeof(msg), 0, (void *)&ss, &slen);
		if (l == -1)
			FUNC0(EXIT_FAILURE, "recv (%s)", FUNC6(errno));
		if (debug)
			FUNC5("got", &msg);
		if (seq != msg.seq)
			FUNC0(EXIT_FAILURE, "seq: expect=%zu actual=%zu",
			    seq, msg.seq);
	}

	/* Tell I'm finished */
	FUNC7(fd, false);
}