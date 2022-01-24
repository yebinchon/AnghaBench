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

/* Variables and functions */
 char const* LocalHostName ; 
 char const* RemoteHostName ; 
 scalar_t__ UserNameRequested ; 
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void
FUNC3(const char *local, const char *remote, const char *name,
		  int server)
{
    RemoteHostName = remote;
    LocalHostName = local;
#ifdef AUTHENTICATION
    auth_init(name, server);
#endif
#ifdef ENCRYPTION
    encrypt_init(name, server);
#endif
    if (UserNameRequested) {
	FUNC2(UserNameRequested);
	UserNameRequested = 0;
    }
}