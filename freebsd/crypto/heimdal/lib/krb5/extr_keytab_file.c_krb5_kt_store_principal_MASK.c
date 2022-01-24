#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  TYPE_3__* krb5_principal ;
typedef  int krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_5__ {int len; int /*<<< orphan*/ * val; } ;
struct TYPE_6__ {int /*<<< orphan*/  name_type; TYPE_1__ name_string; } ;
struct TYPE_7__ {TYPE_2__ name; int /*<<< orphan*/  realm; } ;

/* Variables and functions */
 int /*<<< orphan*/  KRB5_STORAGE_PRINCIPAL_NO_NAME_TYPE ; 
 int /*<<< orphan*/  KRB5_STORAGE_PRINCIPAL_WRONG_NUM_COMPONENTS ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static krb5_error_code
FUNC4(krb5_context context,
			krb5_storage *sp,
			krb5_principal p)
{
    size_t i;
    int ret;

    if(FUNC1(sp, KRB5_STORAGE_PRINCIPAL_WRONG_NUM_COMPONENTS))
	ret = FUNC2(sp, p->name.name_string.len + 1);
    else
	ret = FUNC2(sp, p->name.name_string.len);
    if(ret) return ret;
    ret = FUNC0(sp, p->realm);
    if(ret) return ret;
    for(i = 0; i < p->name.name_string.len; i++){
	ret = FUNC0(sp, p->name.name_string.val[i]);
	if(ret)
	    return ret;
    }
    if(!FUNC1(sp, KRB5_STORAGE_PRINCIPAL_NO_NAME_TYPE)) {
	ret = FUNC3(sp, p->name.name_type);
	if(ret)
	    return ret;
    }

    return 0;
}