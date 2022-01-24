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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  krb5_timestamp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *) ; 

int
FUNC2 (const char *resp, krb5_timestamp *value, int *mask, int bit)
{
    time_t tmp;

    if (FUNC1(resp, &tmp) == 0) {
	*value = tmp;
	if(mask)
	    *mask |= bit;
	return 0;
    }
    if(*resp != '?')
	FUNC0 (stderr, "Unable to parse time \"%s\"\n", resp);
    FUNC0 (stderr, "Print date on format YYYY-mm-dd [hh:mm:ss]\n");
    return -1;
}