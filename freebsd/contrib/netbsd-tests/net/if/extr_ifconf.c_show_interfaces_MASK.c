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
struct TYPE_2__ {int /*<<< orphan*/  sa_len; int /*<<< orphan*/  sa_family; } ;
struct ifreq {char* ifr_name; TYPE_1__ ifr_addr; } ;
struct ifconf {int ifc_len; struct ifreq* ifc_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  SIOCGIFCONF ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifreq*) ; 
 int FUNC4 () ; 
 int FUNC5 (int,int /*<<< orphan*/ ,struct ifconf*) ; 
 struct ifreq* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(int nifreqs)
{
	int i, fd, r;
	struct ifconf ifc;
	struct ifreq *ifreqs;

	if (nifreqs == 0)
		nifreqs = FUNC4();

	if (nifreqs <= 0)
		FUNC2(EXIT_FAILURE, "nifreqs=%d", nifreqs);

	ifreqs = FUNC6(sizeof(struct ifreq) * nifreqs);
	if (ifreqs == NULL)
		FUNC1(EXIT_FAILURE, "malloc(sizeof(ifreq) * %d)", nifreqs);

	fd = FUNC8(AF_INET, SOCK_DGRAM, 0);
	if (fd == -1)
		FUNC1(EXIT_FAILURE, "socket");

	ifc.ifc_len = sizeof(struct ifreq) * nifreqs;
	ifc.ifc_req = ifreqs;

	r = FUNC5(fd, SIOCGIFCONF, &ifc);
	if (r == -1)
		FUNC1(EXIT_FAILURE, "ioctl");
	FUNC0(fd);

	for (i=0; i < (int)(ifc.ifc_len / sizeof(struct ifreq)); i++) {
		FUNC7("%s: af=%hhu socklen=%hhu\n", ifreqs[i].ifr_name,
		    ifreqs[i].ifr_addr.sa_family, ifreqs[i].ifr_addr.sa_len);
	}

	FUNC3(ifreqs);
}