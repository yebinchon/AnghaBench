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
struct addrinfo {char* ai_canonname; int /*<<< orphan*/  ai_flags; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AI_CANONNAME ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC5(char *buffer, int length)
{
	struct addrinfo hints, *info;
	int error = 0;

	FUNC2(buffer, length);
	FUNC3(&hints, 0, sizeof(hints));
	hints.ai_family = AF_INET;    /* Get only ipv4 addrinfo. */
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_flags = AI_CANONNAME;

	error = FUNC1(buffer, NULL, &hints, &info);
	if (error != 0) {
		FUNC4(buffer, "getaddrinfo failed\n", length);
		return (error);
	}
	FUNC4(buffer, info->ai_canonname, length);
	FUNC0(info);
	return (error);
}