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
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ldns_rdf *
FUNC5(ldns_resolver *res, ldns_rdf *domain, ldns_pkt **pkt,
    bool absolute, bool close_tcp) {
    ldns_rdf *dname, **searchlist;
    int i, n;

    if (absolute && FUNC3(res, domain, pkt, close_tcp))
        return domain;

    if ((dname = FUNC0(res)) != NULL) {
        dname = FUNC4(domain, dname);
        if (FUNC3(res, dname, pkt, close_tcp))
            return dname;
    }

    searchlist = FUNC1(res);
    n = FUNC2(res);
    for (i = 0; i < n; i++) {
        dname = FUNC4(domain, searchlist[i]);
        if (FUNC3(res, dname, pkt, close_tcp))
            return dname;
    }

    if (!absolute && FUNC3(res, domain, pkt, close_tcp))
        return domain;

    return NULL;
}