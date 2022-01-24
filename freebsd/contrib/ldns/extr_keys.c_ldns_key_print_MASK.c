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
typedef  int /*<<< orphan*/  ldns_key ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC2 (int /*<<< orphan*/  const*) ; 

void
FUNC3(FILE *output, const ldns_key *k)
{
	char *str = FUNC2(k);
	if (str) {
                FUNC1(output, "%s", str);
        } else {
                FUNC1(output, "Unable to convert private key to string\n");
        }
        FUNC0(str);
}