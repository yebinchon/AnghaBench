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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static int
FUNC2(krb5_context context, const char *path, char *data)
{
    if(FUNC1(data, "yes") == 0 ||
       FUNC1(data, "no") == 0 ||
       FUNC1(data, "2b") == 0 ||
       FUNC1(data, "local") == 0)
	return 0;

    FUNC0(context, "%s: didn't contain a valid option `%s'",
	       path, data);
    return 1;
}