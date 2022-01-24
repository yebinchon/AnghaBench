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
struct pollfd {int events; int revents; int /*<<< orphan*/  fd; } ;
struct client {int flags; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  fds ;

/* Variables and functions */
 int POLLERR ; 
 int POLLIN ; 
 int POLLOUT ; 
 int WAITING_CLOSE ; 
 int WAITING_READ ; 
 int WAITING_WRITE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct client** clients ; 
 int /*<<< orphan*/  FUNC1 (struct pollfd*) ; 
 int /*<<< orphan*/  FUNC2 (struct client*) ; 
 int /*<<< orphan*/  FUNC3 (struct client*) ; 
 struct pollfd* FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct client*) ; 
 int num_clients ; 
 int /*<<< orphan*/  FUNC6 (struct pollfd*,unsigned int,int) ; 

__attribute__((used)) static void
FUNC7(void)
{
    struct pollfd *fds;
    unsigned n;
    unsigned num_fds;

    while(num_clients > 0) {

	fds = FUNC4(num_clients * sizeof(fds[0]));
	if(fds == NULL)
	    FUNC0();

	num_fds = num_clients;

	for (n = 0 ; n < num_fds; n++) {
	    fds[n].fd = clients[n]->fd;
	    fds[n].events = 0;
	    if (clients[n]->flags & WAITING_READ)
		fds[n].events |= POLLIN;
	    if (clients[n]->flags & WAITING_WRITE)
		fds[n].events |= POLLOUT;

	    fds[n].revents = 0;
	}

	FUNC6(fds, num_fds, -1);

	for (n = 0 ; n < num_fds; n++) {
	    if (clients[n] == NULL)
		continue;
	    if (fds[n].revents & POLLERR) {
		clients[n]->flags |= WAITING_CLOSE;
		continue;
	    }

	    if (fds[n].revents & POLLIN)
		FUNC2(clients[n]);
	    if (fds[n].revents & POLLOUT)
		FUNC3(clients[n]);
	}

	n = 0;
	while (n < num_clients) {
	    struct client *c = clients[n];
	    if (FUNC5(c)) {
		if (n < num_clients - 1)
		    clients[n] = clients[num_clients - 1];
		num_clients--;
	    } else
		n++;
	}

	FUNC1(fds);
    }
}