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
struct servent {int s_port; } ;
struct protoent {char* p_name; int p_proto; } ;
struct addrinfo {scalar_t__ ai_protocol; int ai_socktype; } ;

/* Variables and functions */
 int EAI_NONAME ; 
 int EAI_SOCKTYPE ; 
 int IPPROTO_TCP ; 
 int IPPROTO_UDP ; 
 int SOCK_DGRAM ; 
 int SOCK_STREAM ; 
 struct protoent* FUNC0 (scalar_t__) ; 
 struct servent* FUNC1 (char const*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char**,int) ; 

__attribute__((used)) static int
FUNC4 (const char *servname,
			    const struct addrinfo *hints,
			    int *port,
			    int *protocol,
			    int *socktype)
{
    struct servent *se;
    const char *proto_str = NULL;

    *socktype = 0;

    if (hints != NULL && hints->ai_protocol != 0) {
	struct protoent *protoent = FUNC0 (hints->ai_protocol);

	if (protoent == NULL)
	    return EAI_SOCKTYPE; /* XXX */

	proto_str = protoent->p_name;
	*protocol = protoent->p_proto;
    }

    if (hints != NULL)
	*socktype = hints->ai_socktype;

    if (*socktype == SOCK_STREAM) {
	se = FUNC1 (servname, proto_str ? proto_str : "tcp");
	if (proto_str == NULL)
	    *protocol = IPPROTO_TCP;
    } else if (*socktype == SOCK_DGRAM) {
	se = FUNC1 (servname, proto_str ? proto_str : "udp");
	if (proto_str == NULL)
	    *protocol = IPPROTO_UDP;
    } else if (*socktype == 0) {
	if (proto_str != NULL) {
	    se = FUNC1 (servname, proto_str);
	} else {
	    se = FUNC1 (servname, "tcp");
	    *protocol = IPPROTO_TCP;
	    *socktype = SOCK_STREAM;
	    if (se == NULL) {
		se = FUNC1 (servname, "udp");
		*protocol = IPPROTO_UDP;
		*socktype = SOCK_DGRAM;
	    }
	}
    } else
	return EAI_SOCKTYPE;

    if (se == NULL) {
	char *endstr;

	*port = FUNC2(FUNC3 (servname, &endstr, 10));
	if (servname == endstr)
	    return EAI_NONAME;
    } else {
	*port = se->s_port;
    }
    return 0;
}