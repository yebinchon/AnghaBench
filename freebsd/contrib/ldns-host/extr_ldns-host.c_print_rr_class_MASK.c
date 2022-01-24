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
typedef  int /*<<< orphan*/  ldns_rr_class ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,char*) ; 

__attribute__((used)) static int
FUNC3(ldns_rr_class cls) {
    char *str;
    int n;

    str = FUNC1(cls);
    n = FUNC2("%s", str);
    FUNC0(str);
    return n;
}