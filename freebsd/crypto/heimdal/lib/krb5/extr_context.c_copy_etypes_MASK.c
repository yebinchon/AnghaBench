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
typedef  int /*<<< orphan*/  ret_enctypes ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  scalar_t__ krb5_enctype ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,int) ; 

__attribute__((used)) static krb5_error_code
FUNC4 (krb5_context context,
	     krb5_enctype *enctypes,
	     krb5_enctype **ret_enctypes)
{
    unsigned int i;

    for (i = 0; enctypes[i]; i++)
	;
    i++;

    *ret_enctypes = FUNC2(sizeof(ret_enctypes[0]) * i);
    if (*ret_enctypes == NULL) {
	FUNC1(context, ENOMEM,
			       FUNC0("malloc: out of memory", ""));
	return ENOMEM;
    }
    FUNC3(*ret_enctypes, enctypes, sizeof(ret_enctypes[0]) * i);
    return 0;
}