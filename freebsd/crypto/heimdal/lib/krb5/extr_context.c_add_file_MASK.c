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
typedef  int /*<<< orphan*/  krb5_error_code ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char** FUNC1 (char**,int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static krb5_error_code
FUNC3(char ***pfilenames, int *len, char *file)
{
    char **pp = *pfilenames;
    int i;

    for(i = 0; i < *len; i++) {
	if(FUNC2(pp[i], file) == 0) {
	    FUNC0(file);
	    return 0;
	}
    }

    pp = FUNC1(*pfilenames, (*len + 2) * sizeof(*pp));
    if (pp == NULL) {
	FUNC0(file);
	return ENOMEM;
    }

    pp[*len] = file;
    pp[*len + 1] = NULL;
    *pfilenames = pp;
    *len += 1;
    return 0;
}