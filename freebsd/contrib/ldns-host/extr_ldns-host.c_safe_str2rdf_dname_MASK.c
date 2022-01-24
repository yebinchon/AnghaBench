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
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char const*) ; 

__attribute__((used)) static ldns_rdf*
FUNC3(const char *name) {
    ldns_rdf *dname;
    ldns_status status;

    if ((status = FUNC2(&dname, name)) != LDNS_STATUS_OK) {
        FUNC0(1, "'%s' is not a legal name (%s)",
            name, FUNC1(status));
    }
    return dname;
}