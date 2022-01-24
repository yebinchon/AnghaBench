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
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  PTYPE ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (char**,char*,unsigned long) ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static int
FUNC2(krb5_context context, PTYPE param, const char *postfix, char **str)
{
    int ret = FUNC0(str, "%ld", (unsigned long)FUNC1());
    if (ret < 0 || *str == NULL)
	return ENOMEM;
    return 0;
}