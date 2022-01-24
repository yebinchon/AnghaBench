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
struct sockaddr_in {scalar_t__ sin_family; } ;
struct sockaddr {int dummy; } ;
struct in_addr {int s_addr; } ;
struct hostent {char* h_name; int h_length; char** h_addr_list; int /*<<< orphan*/  h_addrtype; int /*<<< orphan*/ * h_aliases; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int MAX_ADDRS ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (char**,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int) ; 
 struct sockaddr_in dns_addr ; 
 int /*<<< orphan*/  dns_req ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct in_addr*) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (char*) ; 
 char* FUNC9 (char*,char*) ; 
 char* FUNC10 (char*,char*,char**) ; 
 scalar_t__ FUNC11 (int,char*,size_t) ; 

__attribute__((used)) static struct hostent*
FUNC12(const char *hostname)
{
    int s;
    struct sockaddr_in addr;
    char *request = NULL;
    char buf[1024];
    int offset = 0;
    int n;
    char *p, *foo;
    size_t len;

    if(dns_addr.sin_family == 0)
	return NULL; /* no configured host */
    addr = dns_addr;
    if (FUNC0(&request, "GET %d?%s HTTP/1.0\r\n\r\n", dns_req, hostname) < 0)
	return NULL;
    if(request == NULL)
	return NULL;
    s  = FUNC7(AF_INET, SOCK_STREAM, 0);
    if(s < 0) {
	FUNC3(request);
	return NULL;
    }
    if(FUNC2(s, (struct sockaddr*)&addr, sizeof(addr)) < 0) {
	FUNC1(s);
	FUNC3(request);
	return NULL;
    }

    len = FUNC8(request);
    if(FUNC11(s, request, len) != (ssize_t)len) {
	FUNC1(s);
	FUNC3(request);
	return NULL;
    }
    FUNC3(request);
    while(1) {
	n = FUNC6(s, buf + offset, sizeof(buf) - offset);
	if(n <= 0)
	    break;
	offset += n;
    }
    buf[offset] = '\0';
    FUNC1(s);
    p = FUNC9(buf, "\r\n\r\n"); /* find end of header */
    if(p) p += 4;
    else return NULL;
    foo = NULL;
    p = FUNC10(p, " \t\r\n", &foo);
    if(p == NULL)
	return NULL;
    {
	/* make a hostent to return */
#define MAX_ADDRS 16
	static struct hostent he;
	static char addrs[4 * MAX_ADDRS];
	static char *addr_list[MAX_ADDRS + 1];
	int num_addrs = 0;

	he.h_name = p;
	he.h_aliases = NULL;
	he.h_addrtype = AF_INET;
	he.h_length = 4;

	while((p = FUNC10(NULL, " \t\r\n", &foo)) && num_addrs < MAX_ADDRS) {
	    struct in_addr ip;
	    FUNC4(p, &ip);
	    ip.s_addr = FUNC5(ip.s_addr);
	    addr_list[num_addrs] = &addrs[num_addrs * 4];
	    addrs[num_addrs * 4 + 0] = (ip.s_addr >> 24) & 0xff;
	    addrs[num_addrs * 4 + 1] = (ip.s_addr >> 16) & 0xff;
	    addrs[num_addrs * 4 + 2] = (ip.s_addr >> 8) & 0xff;
	    addrs[num_addrs * 4 + 3] = (ip.s_addr >> 0) & 0xff;
	    addr_list[++num_addrs] = NULL;
	}
	he.h_addr_list = addr_list;
	return &he;
    }
}