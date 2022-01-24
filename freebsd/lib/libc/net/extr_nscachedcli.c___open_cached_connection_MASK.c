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
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
struct kevent {int dummy; } ;
struct cached_connection_params {int /*<<< orphan*/  socket_path; } ;
struct cached_connection_ {int sockfd; int write_queue; int read_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVFILT_READ ; 
 int /*<<< orphan*/  EVFILT_WRITE ; 
 int /*<<< orphan*/  EV_ADD ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  PF_LOCAL ; 
 int SOCK_CLOEXEC ; 
 int SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,struct kevent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 void* FUNC7 () ; 
 struct cached_connection_* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct cached_connection_*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

struct cached_connection_ *
FUNC12(struct cached_connection_params const *params)
{
	struct cached_connection_ *retval;
	struct kevent eventlist;
	struct sockaddr_un client_address;
	int client_address_len, client_socket;
	int res;

	FUNC6(params != NULL);

	client_socket = FUNC5(PF_LOCAL, SOCK_STREAM | SOCK_CLOEXEC, 0);
	client_address.sun_family = PF_LOCAL;
	FUNC11(client_address.sun_path, params->socket_path,
	    sizeof(client_address.sun_path));
	client_address_len = sizeof(client_address.sun_family) +
	    FUNC10(client_address.sun_path) + 1;

	res = FUNC2(client_socket, (struct sockaddr *)&client_address,
	    client_address_len);
	if (res == -1) {
		FUNC1(client_socket);
		return (NULL);
	}
	FUNC3(client_socket, F_SETFL, O_NONBLOCK);

	retval = FUNC8(sizeof(struct cached_connection_));
	FUNC6(retval != NULL);
	FUNC9(retval, 0, sizeof(struct cached_connection_));

	retval->sockfd = client_socket;

	retval->write_queue = FUNC7();
	FUNC6(retval->write_queue != -1);

	FUNC0(&eventlist, retval->sockfd, EVFILT_WRITE, EV_ADD, 0, 0, NULL);
	res = FUNC4(retval->write_queue, &eventlist, 1, NULL, 0, NULL);

	retval->read_queue = FUNC7();
	FUNC6(retval->read_queue != -1);

	FUNC0(&eventlist, retval->sockfd, EVFILT_READ, EV_ADD, 0, 0, NULL);
	res = FUNC4(retval->read_queue, &eventlist, 1, NULL, 0, NULL);

	return (retval);
}