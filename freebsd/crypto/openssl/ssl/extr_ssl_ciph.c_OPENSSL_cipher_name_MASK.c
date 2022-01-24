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
typedef  int /*<<< orphan*/  SSL_CIPHER ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 

const char *FUNC2(const char *stdname)
{
    const SSL_CIPHER *c;

    if (stdname == NULL)
        return "(NONE)";
    c = FUNC1(stdname);
    return FUNC0(c);
}