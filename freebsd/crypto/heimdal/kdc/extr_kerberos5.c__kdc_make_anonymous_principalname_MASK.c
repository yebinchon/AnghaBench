#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_error_code ;
struct TYPE_4__ {int len; int /*<<< orphan*/ ** val; } ;
struct TYPE_5__ {TYPE_1__ name_string; int /*<<< orphan*/  name_type; } ;
typedef  TYPE_2__ PrincipalName ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  KRB5_NT_PRINCIPAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 

krb5_error_code
FUNC3 (PrincipalName *pn)
{
    pn->name_type = KRB5_NT_PRINCIPAL;
    pn->name_string.len = 1;
    pn->name_string.val = FUNC1(sizeof(*pn->name_string.val));
    if (pn->name_string.val == NULL)
	return ENOMEM;
    pn->name_string.val[0] = FUNC2("anonymous");
    if (pn->name_string.val[0] == NULL) {
	FUNC0(pn->name_string.val);
	pn->name_string.val = NULL;
	return ENOMEM;
    }
    return 0;
}