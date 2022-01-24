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
struct cert_status {int haveAKI; } ;
typedef  int /*<<< orphan*/  hx509_validate_ctx ;
typedef  enum critical_flag { ____Placeholder_critical_flag } critical_flag ;
struct TYPE_11__ {TYPE_2__* keyIdentifier; } ;
struct TYPE_8__ {size_t length; int /*<<< orphan*/  data; } ;
struct TYPE_10__ {TYPE_1__ extnValue; } ;
struct TYPE_9__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ Extension ;
typedef  TYPE_4__ AuthorityKeyIdentifier ;

/* Variables and functions */
 int /*<<< orphan*/  HX509_VALIDATE_F_VALIDATE ; 
 int /*<<< orphan*/  HX509_VALIDATE_F_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cert_status*,int,TYPE_3__ const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,size_t,TYPE_4__*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC5(hx509_validate_ctx ctx,
			     struct cert_status *status,
			     enum critical_flag cf,
			     const Extension *e)
{
    AuthorityKeyIdentifier ai;
    size_t size;
    int ret;

    status->haveAKI = 1;
    FUNC0(ctx, status, cf, e);

    ret = FUNC1(e->extnValue.data,
					e->extnValue.length,
					&ai, &size);
    if (ret) {
	FUNC4(ctx, HX509_VALIDATE_F_VALIDATE,
		       "Decoding AuthorityKeyIdentifier failed: %d", ret);
	return 1;
    }
    if (size != e->extnValue.length) {
	FUNC4(ctx, HX509_VALIDATE_F_VALIDATE,
		       "Decoding SKI ahve extra bits on the end");
	return 1;
    }

    if (ai.keyIdentifier) {
	char *id;
	FUNC3(ai.keyIdentifier->data, ai.keyIdentifier->length, &id);
	if (id) {
	    FUNC4(ctx, HX509_VALIDATE_F_VERBOSE,
			   "\tauthority key id: %s\n", id);
	    FUNC2(id);
	}
    }

    return 0;
}