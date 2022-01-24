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
 long FUNC2 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(krb5_context context, const char *path, char *data)
{
    long int v;
    char *end;
    if(FUNC1(data, "yes") == 0 ||
       FUNC1(data, "true") == 0 ||
       FUNC1(data, "no") == 0 ||
       FUNC1(data, "false") == 0)
	return 0;
    v = FUNC2(data, &end, 0);
    if(*end != '\0') {
	FUNC0(context, "%s: failed to parse \"%s\" as a boolean",
		   path, data);
	return 1;
    }
    if(v != 0 && v != 1)
	FUNC0(context, "%s: numeric value \"%s\" is treated as \"true\"",
		   path, data);
    return 0;
}