#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int length; unsigned int* components; } ;
typedef  TYPE_1__ heim_oid ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 long INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 unsigned int* FUNC2 (unsigned int*,int) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char*,char const*,char**) ; 
 long FUNC5 (char*,char**,int) ; 

int
FUNC6 (const char *str, const char *sep, heim_oid *data)
{
    char *s, *w, *brkt, *endptr;
    unsigned int *c;
    long l;

    data->length = 0;
    data->components = NULL;

    if (sep == NULL)
	sep = ".";

    s = FUNC3(str);

    for (w = FUNC4(s, sep, &brkt);
	 w != NULL;
	 w = FUNC4(NULL, sep, &brkt)) {

	c = FUNC2(data->components,
		    (data->length + 1) * sizeof(data->components[0]));
	if (c == NULL) {
	    FUNC0(data);
	    FUNC1(s);
	    return ENOMEM;
	}
	data->components = c;

	l = FUNC5(w, &endptr, 10);
	if (*endptr != '\0' || l < 0 || l > INT_MAX) {
	    FUNC0(data);
	    FUNC1(s);
	    return EINVAL;
	}
	data->components[data->length++] = l;
    }
    FUNC1(s);
    return 0;
}