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
typedef  int /*<<< orphan*/  sockfdstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char const*,char*,char const*,...) ; 
 int FUNC2 (char*,int,char*,int) ; 

void
FUNC3(int sockfd, const char *outtype, const char* defos)
{
	char	 sockfdstr[10];

	if (FUNC2(sockfdstr, sizeof(sockfdstr), "%d", sockfd) == -1)
		FUNC0(1, "snprintf");
	if (defos == NULL)
		FUNC1("mandocd", "mandocd", "-T", outtype,
		    sockfdstr, (char *)NULL);
	else
		FUNC1("mandocd", "mandocd", "-T", outtype,
		    "-I", defos, sockfdstr, (char *)NULL);
	FUNC0(1, "exec");
}