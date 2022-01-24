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
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_const_principal ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  quotable_chars ; 
 size_t FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,int) ; 

__attribute__((used)) static krb5_error_code
FUNC10(krb5_context context,
	     krb5_const_principal principal,
	     char **name,
	     int flags)
{
    size_t len = 0, plen;
    size_t i;
    krb5_error_code ret;
    /* count length */
    if (FUNC6(principal)) {
	plen = FUNC8(FUNC6(principal));

	if(FUNC7(FUNC6(principal), quotable_chars) == plen)
	    len += plen;
	else
	    len += 2*plen;
	len++; /* '@' */
    }
    for(i = 0; i < FUNC5(principal); i++){
	plen = FUNC8(FUNC4(principal, i));
	if(FUNC7(FUNC4(principal, i), quotable_chars) == plen)
	    len += plen;
	else
	    len += 2*plen;
	len++;
    }
    len++; /* '\0' */
    *name = FUNC3(len);
    if(*name == NULL) {
	FUNC2(context, ENOMEM,
			       FUNC0("malloc: out of memory", ""));
	return ENOMEM;
    }
    ret = FUNC9(context, principal, *name, len, flags);
    if(ret) {
	FUNC1(*name);
	*name = NULL;
    }
    return ret;
}