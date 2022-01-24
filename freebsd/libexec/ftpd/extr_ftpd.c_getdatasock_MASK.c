#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  on ;
struct TYPE_7__ {int /*<<< orphan*/  su_family; } ;
struct TYPE_6__ {scalar_t__ su_family; int /*<<< orphan*/  su_len; int /*<<< orphan*/  su_port; } ;
struct TYPE_5__ {int /*<<< orphan*/  pw_uid; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int EADDRINUSE ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int IPTOS_THROUGHPUT ; 
 int /*<<< orphan*/  IP_TOS ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int /*<<< orphan*/  TCP_NOPUSH ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__ ctrl_addr ; 
 scalar_t__ data ; 
 TYPE_3__ data_dest ; 
 TYPE_2__ data_source ; 
 int /*<<< orphan*/  dataport ; 
 int errno ; 
 int /*<<< orphan*/ * FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* pw ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static FILE *
FUNC9(char *mode)
{
	int on = 1, s, t, tries;

	if (data >= 0)
		return (FUNC2(data, mode));

	s = FUNC7(data_dest.su_family, SOCK_STREAM, 0);
	if (s < 0)
		goto bad;
	if (FUNC5(s, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on)) < 0)
		FUNC8(LOG_WARNING, "data setsockopt (SO_REUSEADDR): %m");
	/* anchor socket to avoid multi-homing problems */
	data_source = ctrl_addr;
	data_source.su_port = FUNC3(dataport);
	(void) FUNC4(0);
	for (tries = 1; ; tries++) {
		/*
		 * We should loop here since it's possible that
		 * another ftpd instance has passed this point and is
		 * trying to open a data connection in active mode now.
		 * Until the other connection is opened, we'll be getting
		 * EADDRINUSE because no SOCK_STREAM sockets in the system
		 * can share both local and remote addresses, localIP:20
		 * and *:* in this case.
		 */
		if (FUNC0(s, (struct sockaddr *)&data_source,
		    data_source.su_len) >= 0)
			break;
		if (errno != EADDRINUSE || tries > 10)
			goto bad;
		FUNC6(tries);
	}
	(void) FUNC4(pw->pw_uid);
#ifdef IP_TOS
	if (data_source.su_family == AF_INET)
      {
	on = IPTOS_THROUGHPUT;
	if (setsockopt(s, IPPROTO_IP, IP_TOS, &on, sizeof(int)) < 0)
		syslog(LOG_WARNING, "data setsockopt (IP_TOS): %m");
      }
#endif
#ifdef TCP_NOPUSH
	/*
	 * Turn off push flag to keep sender TCP from sending short packets
	 * at the boundaries of each write().
	 */
	on = 1;
	if (setsockopt(s, IPPROTO_TCP, TCP_NOPUSH, &on, sizeof on) < 0)
		syslog(LOG_WARNING, "data setsockopt (TCP_NOPUSH): %m");
#endif
	return (FUNC2(s, mode));
bad:
	/* Return the real value of errno (close may change it) */
	t = errno;
	(void) FUNC4(pw->pw_uid);
	(void) FUNC1(s);
	errno = t;
	return (NULL);
}