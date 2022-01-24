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
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* LDNS_RESOLV_HOSTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

ldns_rr_list *
FUNC3(char *filename)
{
	ldns_rr_list *names;
	FILE *fp;

	if (!filename) {
                fp = FUNC1(LDNS_RESOLV_HOSTS, "r");
        
        } else {
                fp = FUNC1(filename, "r");
        }
        if (!fp) {
                return NULL;
        }

	names = FUNC2(fp);
	FUNC0(fp);
	return names;
}