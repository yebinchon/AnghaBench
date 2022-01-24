#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct passwd {scalar_t__ pw_uid; } ;

/* Variables and functions */
 scalar_t__ ARG_MAX ; 
 scalar_t__ USERNAME_SZ ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,char*) ; 
 struct passwd* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,char*,char*) ; 
 char* FUNC3 (int,scalar_t__,char*) ; 

__attribute__((used)) static int
FUNC4 (int s, u_char *buf,
	       struct sockaddr_in *thisaddr,
	       struct sockaddr_in *thataddr,
	       char **client_username,
	       char **server_username,
	       char **cmd)
{
    struct passwd *pwd;

    *client_username = FUNC3 (s, USERNAME_SZ, "local username");
    *server_username = FUNC3 (s, USERNAME_SZ, "remote username");
    *cmd = FUNC3 (s, ARG_MAX + 1, "command");
    pwd = FUNC1(*server_username);
    if (pwd == NULL)
	FUNC0(s, NULL, "Login incorrect.");
    if (FUNC2(thataddr->sin_addr.s_addr, pwd->pw_uid == 0,
		 *client_username, *server_username))
	FUNC0(s, NULL, "Login incorrect.");
    return 0;
}