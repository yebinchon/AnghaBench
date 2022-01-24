#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hx509_validate_ctx ;
struct TYPE_3__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ heim_any ;
typedef  int PKIXXmppAddr ;

/* Variables and functions */
 int /*<<< orphan*/  HX509_VALIDATE_F_VALIDATE ; 
 int /*<<< orphan*/  HX509_VALIDATE_F_VERBOSE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC3(hx509_validate_ctx ctx, heim_any *a)
{
    PKIXXmppAddr jid;
    size_t size;
    int ret;

    ret = FUNC0(a->data, a->length, &jid, &size);
    if (ret) {
	FUNC2(ctx, HX509_VALIDATE_F_VALIDATE,
		       "Decoding JID in SAN failed: %d", ret);
	return 1;
    }

    FUNC2(ctx, HX509_VALIDATE_F_VERBOSE, "%s", jid);
    FUNC1(&jid);

    return 0;
}