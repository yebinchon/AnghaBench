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
struct evkeyvalq {int dummy; } ;

/* Variables and functions */
 int EVHTTP_PROXY_REQUEST ; 
 char* FUNC0 (struct evkeyvalq*,char*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static int
FUNC2(int flags, struct evkeyvalq* headers)
{
	if (flags & EVHTTP_PROXY_REQUEST) {
		/* proxy connection */
		const char *connection = FUNC0(headers, "Proxy-Connection");
		return (connection == NULL || FUNC1(connection, "keep-alive") != 0);
	} else {
		const char *connection = FUNC0(headers, "Connection");
		return (connection != NULL && FUNC1(connection, "close") == 0);
	}
}