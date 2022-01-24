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
struct addrinfo {void* ai_socktype; int /*<<< orphan*/ * ai_next; int /*<<< orphan*/ * ai_addr; int /*<<< orphan*/ * ai_canonname; scalar_t__ ai_addrlen; scalar_t__ ai_protocol; int /*<<< orphan*/  ai_family; scalar_t__ ai_flags; } ;
typedef  int /*<<< orphan*/  service ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  hostname ;

/* Variables and functions */
 int EAI_SERVICE ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 void* SOCK_DGRAM ; 
 void* SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 
 size_t FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 scalar_t__ FUNC7 (char const*,char*,int) ; 
 scalar_t__ FUNC8 (char const**,char*,char*,int) ; 
 int FUNC9 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(krb5_context context, const char *path, char *data)
{
    int ret;
    char hostname[128];
    const char *p = data;
    struct addrinfo hints;
    char service[32];
    int defport;
    struct addrinfo *ai;

    hints.ai_flags = 0;
    hints.ai_family = PF_UNSPEC;
    hints.ai_socktype = 0;
    hints.ai_protocol = 0;

    hints.ai_addrlen = 0;
    hints.ai_canonname = NULL;
    hints.ai_addr = NULL;
    hints.ai_next = NULL;

    /* XXX data could be a list of hosts that this code can't handle */
    /* XXX copied from krbhst.c */
    if(FUNC7(p, "http://", 7) == 0){
        p += 7;
	hints.ai_socktype = SOCK_STREAM;
	FUNC6(service, "http", sizeof(service));
	defport = 80;
    } else if(FUNC7(p, "http/", 5) == 0) {
        p += 5;
	hints.ai_socktype = SOCK_STREAM;
	FUNC6(service, "http", sizeof(service));
	defport = 80;
    }else if(FUNC7(p, "tcp/", 4) == 0){
        p += 4;
	hints.ai_socktype = SOCK_STREAM;
	FUNC6(service, "kerberos", sizeof(service));
	defport = 88;
    } else if(FUNC7(p, "udp/", 4) == 0) {
        p += 4;
	hints.ai_socktype = SOCK_DGRAM;
	FUNC6(service, "kerberos", sizeof(service));
	defport = 88;
    } else {
	hints.ai_socktype = SOCK_DGRAM;
	FUNC6(service, "kerberos", sizeof(service));
	defport = 88;
    }
    if(FUNC8(&p, ":", hostname, sizeof(hostname)) < 0) {
	return 1;
    }
    hostname[FUNC5(hostname, "/")] = '\0';
    if(p != NULL) {
	char *end;
	int tmp = FUNC9(p, &end, 0);
	if(end == p) {
	    FUNC3(context, "%s: failed to parse port number in %s",
		       path, data);
	    return 1;
	}
	defport = tmp;
	FUNC4(service, sizeof(service), "%u", defport);
    }
    ret = FUNC1(hostname, service, &hints, &ai);
    if(ret == EAI_SERVICE && !FUNC2((unsigned char)service[0])) {
	FUNC4(service, sizeof(service), "%u", defport);
	ret = FUNC1(hostname, service, &hints, &ai);
    }
    if(ret != 0) {
	FUNC3(context, "%s: %s (%s)", path, FUNC0(ret), hostname);
	return 1;
    }
    return 0;
}