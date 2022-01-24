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
struct evhttp_bound_socket {int dummy; } ;
struct evhttp {int dummy; } ;
typedef  int /*<<< orphan*/  ev_uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct evhttp_bound_socket* FUNC1 (struct evhttp*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct evhttp_bound_socket*) ; 
 struct evhttp* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct evhttp *
FUNC5(ev_uint16_t *pport)
{
	struct evhttp *myhttp;
	ev_uint16_t port;
	struct evhttp_bound_socket *sock;

	myhttp = FUNC3(NULL);
	if (!myhttp)
		FUNC0(1, "Could not start web server");

	/* Try a few different ports */
	sock = FUNC1(myhttp, "127.0.0.1", 0);
	if (!sock)
		FUNC0(1, "Couldn't open web port");

	port = FUNC4(FUNC2(sock));

	*pport = port;
	return (myhttp);
}