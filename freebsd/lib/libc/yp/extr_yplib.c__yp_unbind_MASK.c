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
struct sockaddr_in {scalar_t__ sin_family; scalar_t__ sin_port; } ;
struct sockaddr {int dummy; } ;
struct dom_binding {int dom_socket; scalar_t__ dom_local_port; int dom_vers; int /*<<< orphan*/ * dom_client; } ;
typedef  int socklen_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dom_binding*) ; 

__attribute__((used)) static void
FUNC6(struct dom_binding *ypb)
{
	struct sockaddr_in check;
	socklen_t checklen = sizeof(struct sockaddr_in);

	if (ypb->dom_client != NULL) {
		/* Check the socket -- may have been hosed by the caller. */
		if (FUNC3(ypb->dom_socket, (struct sockaddr *)&check,
	    	&checklen) == -1 || check.sin_family != AF_INET ||
	    	check.sin_port != ypb->dom_local_port) {
			int save, sock;

			sock = ypb->dom_socket;
			save = FUNC1(ypb->dom_socket);
			FUNC4(ypb->dom_client);
			sock = FUNC2(save, sock);
			FUNC0(save);
		} else
			FUNC4(ypb->dom_client);
	}

	ypb->dom_client = NULL;
	ypb->dom_socket = -1;
	ypb->dom_vers = -1;
#ifdef YPMATCHCACHE
	ypmatch_cache_flush(ypb);
#endif
}