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

/* Variables and functions */
 size_t FUNC0 (int,char const*,size_t) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(int s,
		 struct sockaddr *thisaddr,
		 struct sockaddr *thataddr,
		 const char *hostname,
		 const char *remote_user,
		 const char *local_user,
		 size_t cmd_len,
		 const char *cmd)
{
    size_t len;

    len = FUNC1(local_user) + 1;
    if (FUNC0 (s, local_user, len) != len) {
	FUNC2 ("write");
	return 1;
    }
    len = FUNC1(remote_user) + 1;
    if (FUNC0 (s, remote_user, len) != len) {
	FUNC2 ("write");
	return 1;
    }
    if (FUNC0 (s, cmd, cmd_len) != cmd_len) {
	FUNC2 ("write");
	return 1;
    }
    return 0;
}