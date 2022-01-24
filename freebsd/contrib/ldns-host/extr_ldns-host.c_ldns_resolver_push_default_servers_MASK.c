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
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char*) ; 

__attribute__((used)) static ldns_status
FUNC4(ldns_resolver *res) {
    ldns_status status;
    ldns_rdf *addr;

    if ((status = FUNC2(&addr, "127.0.0.1")) != LDNS_STATUS_OK ||
        (status = FUNC1(res, addr)) != LDNS_STATUS_OK)
        return FUNC0(addr), status;
    FUNC0(addr);
    if ((status = FUNC3(&addr, "::1")) != LDNS_STATUS_OK ||
        (status = FUNC1(res, addr)) != LDNS_STATUS_OK)
        return FUNC0(addr), status;
    FUNC0(addr);
    return LDNS_STATUS_OK;
}