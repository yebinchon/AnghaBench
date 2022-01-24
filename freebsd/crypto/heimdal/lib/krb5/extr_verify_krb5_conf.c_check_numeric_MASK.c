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
 long LONG_MAX ; 
 long LONG_MIN ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 long FUNC1 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(krb5_context context, const char *path, char *data)
{
    long v;
    char *end;
    v = FUNC1(data, &end, 0);

    if ((v == LONG_MIN || v == LONG_MAX) && errno != 0) {
	FUNC0(context, "%s: over/under flow for \"%s\"",
		   path, data);
	return 1;
    }
    if(*end != '\0') {
	FUNC0(context, "%s: failed to parse \"%s\" as a number",
		   path, data);
	return 1;
    }
    return 0;
}