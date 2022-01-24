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
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  scalar_t__ krb5_error_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 char* FUNC3 (size_t) ; 

__attribute__((used)) static krb5_error_code
FUNC4(krb5_storage *sp, int ucs2, size_t len, char **s)
{
    krb5_error_code ret;

    *s = FUNC3(len + 1);
    if (*s == NULL)
	return ENOMEM;
    FUNC0(FUNC2(sp, *s, len), len);

    (*s)[len] = '\0';

    if (ucs2) {
	size_t i;
	for (i = 0; i < len / 2; i++) {
	    (*s)[i] = (*s)[i * 2];
	    if ((*s)[i * 2 + 1]) {
		FUNC1(*s);
		*s = NULL;
		return EINVAL;
	    }
	}
	(*s)[i] = '\0';
    }
    ret = 0;
 out:
    return ret;
}