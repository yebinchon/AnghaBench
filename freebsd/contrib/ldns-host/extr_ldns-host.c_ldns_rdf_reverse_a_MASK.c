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
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 int LDNS_IP4ADDRLEN ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,char*,...) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static ldns_rdf *
FUNC5(ldns_rdf *addr, const char *base) {
    char *buf;
    int i, len;

    len = FUNC4(base);
    buf = FUNC0(LDNS_IP4ADDRLEN*4 + len + 1);
    for (len = i = 0; i < LDNS_IP4ADDRLEN; i++)
        len += FUNC3(&buf[len], "%d.",
            (int)FUNC2(addr)[LDNS_IP4ADDRLEN - i - 1]);
    FUNC3(&buf[len], "%s", base);
    return FUNC1(buf);
}