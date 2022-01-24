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
typedef  int /*<<< orphan*/  resp ;
typedef  int /*<<< orphan*/  krb5_timestamp ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*,char*,int) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

int
FUNC3 (const char *prompt, krb5_timestamp *value, int *mask, int bit)
{
    char buf[1024], resp[1024];

    if (mask && (*mask & bit))
	return 0;

    FUNC2 (*value, buf, sizeof (buf), 0);

    for (;;) {
	if(FUNC0(prompt, buf, resp, sizeof(resp)) != 0)
	    return 1;
	if (FUNC1 (resp, value, mask, bit) == 0)
	    break;
    }
    return 0;
}