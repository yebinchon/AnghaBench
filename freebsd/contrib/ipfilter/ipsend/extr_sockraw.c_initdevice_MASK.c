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
struct sockaddr {int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
struct ifreq {int /*<<< orphan*/  ifr_addr; int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  s ;
typedef  int /*<<< orphan*/  ifr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  IPPROTO_RAW ; 
 int /*<<< orphan*/  SIOCGIFADDR ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

int	FUNC8(char *device, int tout)
{
	struct sockaddr s;
	struct ifreq ifr;
	int fd;

	FUNC4(&ifr, 0, sizeof(ifr));
	FUNC7(ifr.ifr_name, device, sizeof ifr.ifr_name);

	if ((fd = FUNC6(AF_INET, SOCK_RAW, IPPROTO_RAW)) < 0)
	    {
		FUNC5("socket(AF_INET, SOCK_RAW, IPPROTO_RAW)");
		return -1;
	    }

	if (FUNC3(fd, SIOCGIFADDR, &ifr) == -1)
	    {
		FUNC5("ioctl SIOCGIFADDR");
		return -1;
	    }

	FUNC2((char *)&s, sizeof(s));
	s.sa_family = AF_INET;
	FUNC0(&ifr.ifr_addr, s.sa_data, 4);
	if (FUNC1(fd, &s, sizeof(s)) == -1)
		FUNC5("bind");
	return fd;
}