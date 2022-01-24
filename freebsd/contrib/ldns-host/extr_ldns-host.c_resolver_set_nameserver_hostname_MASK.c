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
struct addrinfo {scalar_t__ ai_addr; struct addrinfo* ai_next; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
typedef  scalar_t__ ldns_status ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 int EAI_AGAIN ; 
#define  LDNS_RESOLV_INET 129 
#define  LDNS_RESOLV_INET6 128 
 scalar_t__ LDNS_STATUS_MEM_ERR ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(ldns_resolver *res, const char *server) {
    struct addrinfo hints, *ailist, *ai;
    ldns_status status;
    ldns_rdf *rdf;
    int err;

    FUNC7(&hints, 0, sizeof hints);
    switch (FUNC4(res)) {
    case LDNS_RESOLV_INET: hints.ai_family = PF_INET; break;
    case LDNS_RESOLV_INET6: hints.ai_family = PF_INET6; break;
    default: hints.ai_family = PF_UNSPEC; break;
    }
    hints.ai_socktype = SOCK_STREAM;
    do err = FUNC2(server, NULL, &hints, &ailist);
    while (err == EAI_AGAIN);
    if (err != 0)
        FUNC0(1, "couldn't get address for '%s': %s", server, FUNC1(err));
    for (ai = ailist; ai != NULL; ai = ai->ai_next) {
        if ((rdf = FUNC6((void*)ai->ai_addr, NULL)) == NULL)
            FUNC0(1, "couldn't allocate an rdf: %s",
                FUNC3(LDNS_STATUS_MEM_ERR));
        status = FUNC5(res, rdf);
        if (status != LDNS_STATUS_OK)
            FUNC0(1, "couldn't push a nameserver address: %s",
                FUNC3(status));
    }
}