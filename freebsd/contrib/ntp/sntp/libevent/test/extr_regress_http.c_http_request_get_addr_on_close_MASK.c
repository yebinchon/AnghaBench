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
struct sockaddr {int dummy; } ;
struct evhttp_connection {int dummy; } ;
typedef  int /*<<< orphan*/  local ;
typedef  int /*<<< orphan*/  addrbuf ;

/* Variables and functions */
 struct sockaddr* FUNC0 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int test_ok ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(struct evhttp_connection *evcon, void *arg)
{
	const struct sockaddr *storage;
	char addrbuf[128];
	char local[] = "127.0.0.1:";

	test_ok = 0;
	FUNC3(evcon);

	storage = FUNC0(evcon);
	FUNC3(storage);

	FUNC1((struct sockaddr *)storage, addrbuf, sizeof(addrbuf));
	FUNC3(!FUNC2(addrbuf, local, sizeof(local) - 1));

	test_ok = 1;
	return;

end:
	test_ok = 0;
}