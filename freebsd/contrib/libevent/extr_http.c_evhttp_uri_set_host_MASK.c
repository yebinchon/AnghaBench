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
struct evhttp_uri {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 int FUNC3 (char const*) ; 

int
FUNC4(struct evhttp_uri *uri, const char *host)
{
	if (host) {
		if (host[0] == '[') {
			if (! FUNC1(host, host+FUNC3(host)))
				return -1;
		} else {
			if (! FUNC2(host, host+FUNC3(host)))
				return -1;
		}
	}

	FUNC0(host);
	return 0;
}