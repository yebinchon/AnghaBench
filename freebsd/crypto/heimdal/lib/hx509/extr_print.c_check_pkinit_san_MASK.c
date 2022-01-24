#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hx509_validate_ctx ;
struct TYPE_10__ {size_t length; int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ heim_any ;
struct TYPE_8__ {unsigned int len; int* val; } ;
struct TYPE_9__ {TYPE_1__ name_string; } ;
struct TYPE_11__ {int realm; TYPE_2__ principalName; } ;
typedef  TYPE_4__ KRB5PrincipalName ;

/* Variables and functions */
 int /*<<< orphan*/  HX509_VALIDATE_F_VALIDATE ; 
 int /*<<< orphan*/  HX509_VALIDATE_F_VERBOSE ; 
 int FUNC0 (int /*<<< orphan*/ ,size_t,TYPE_4__*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC3(hx509_validate_ctx ctx, heim_any *a)
{
    KRB5PrincipalName kn;
    unsigned i;
    size_t size;
    int ret;

    ret = FUNC0(a->data, a->length, &kn, &size);
    if (ret) {
	FUNC2(ctx, HX509_VALIDATE_F_VALIDATE,
		       "Decoding kerberos name in SAN failed: %d", ret);
	return 1;
    }

    if (size != a->length) {
	FUNC2(ctx, HX509_VALIDATE_F_VALIDATE,
		       "Decoding kerberos name have extra bits on the end");
	return 1;
    }

    /* print kerberos principal, add code to quote / within components */
    for (i = 0; i < kn.principalName.name_string.len; i++) {
	FUNC2(ctx, HX509_VALIDATE_F_VERBOSE, "%s",
		       kn.principalName.name_string.val[i]);
	if (i + 1 < kn.principalName.name_string.len)
	    FUNC2(ctx, HX509_VALIDATE_F_VERBOSE, "/");
    }
    FUNC2(ctx, HX509_VALIDATE_F_VERBOSE, "@");
    FUNC2(ctx, HX509_VALIDATE_F_VERBOSE, "%s", kn.realm);

    FUNC1(&kn);
    return 0;
}