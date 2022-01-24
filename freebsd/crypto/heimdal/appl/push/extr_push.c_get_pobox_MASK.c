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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char const**) ; 

__attribute__((used)) static char *
FUNC3 (const char **user)
{
    char *ret = NULL;

#ifdef HESIOD
    ret = hesiod_get_pobox (user);
#endif

    if (ret == NULL)
	ret = FUNC1("MAILHOST");
    if (ret == NULL)
	FUNC0 (1, "MAILHOST not set");
    return ret;
}