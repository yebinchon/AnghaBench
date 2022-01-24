#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct in_addr {int dummy; } ;
struct hostent_data {char* hostbuf; char** h_addr_ptrs; scalar_t__ host_addr; int /*<<< orphan*/ ** host_aliases; } ;
struct hostent {int h_addrtype; char* h_name; char** h_addr_list; int /*<<< orphan*/ ** h_aliases; int /*<<< orphan*/  h_length; } ;
typedef  TYPE_1__* res_state ;
struct TYPE_4__ {unsigned int options; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  EAFNOSUPPORT ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  HOST_NOT_FOUND ; 
 size_t MAXDNAME ; 
 int /*<<< orphan*/  NETDB_INTERNAL ; 
 int /*<<< orphan*/  NETDB_SUCCESS ; 
 int /*<<< orphan*/  NS_IN6ADDRSZ ; 
 int /*<<< orphan*/  NS_INADDRSZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 unsigned int RES_USE_INET6 ; 
 scalar_t__ FUNC1 (struct hostent*,struct hostent*,char*,size_t) ; 
 struct hostent_data* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC4 (char const*,struct in_addr*) ; 
 int FUNC5 (int,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 

__attribute__((used)) static int
FUNC7(const char *name, int af, struct hostent *hp, char *buf,
    size_t buflen, res_state statp)
{
	struct hostent_data *hed;
	struct hostent he;

	if ((hed = FUNC2()) == NULL) {
		errno = ENOMEM;
		FUNC0(statp, NETDB_INTERNAL);
		return (-1);
	}

	if ((af != AF_INET ||
	    FUNC4(name, (struct in_addr *)hed->host_addr) != 1) &&
	    FUNC5(af, name, hed->host_addr) != 1) {
		FUNC0(statp, HOST_NOT_FOUND);
		return (-1);
	}
	FUNC6(hed->hostbuf, name, MAXDNAME);
	hed->hostbuf[MAXDNAME] = '\0';
	if (af == AF_INET && (statp->options & RES_USE_INET6) != 0U) {
		FUNC3((char *)hed->host_addr,
		    (char *)hed->host_addr);
		af = AF_INET6;
	}
	he.h_addrtype = af;
	switch(af) {
	case AF_INET:
		he.h_length = NS_INADDRSZ;
		break;
	case AF_INET6:
		he.h_length = NS_IN6ADDRSZ;
		break;
	default:
		errno = EAFNOSUPPORT;
		FUNC0(statp, NETDB_INTERNAL);
		return (-1);
	}
	he.h_name = hed->hostbuf;
	he.h_aliases = hed->host_aliases;
	hed->host_aliases[0] = NULL;
	hed->h_addr_ptrs[0] = (char *)hed->host_addr;
	hed->h_addr_ptrs[1] = NULL;
	he.h_addr_list = hed->h_addr_ptrs;
	if (FUNC1(&he, hp, buf, buflen) != 0) {
		FUNC0(statp, NETDB_INTERNAL);
		return (-1);
	}
	FUNC0(statp, NETDB_SUCCESS);
	return (0);
}