#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct cert_status {int dummy; } ;
typedef  int /*<<< orphan*/  hx509_validate_ctx ;
typedef  enum critical_flag { ____Placeholder_critical_flag } critical_flag ;
struct TYPE_12__ {size_t len; TYPE_2__* val; } ;
struct TYPE_9__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_11__ {TYPE_1__ extnValue; } ;
struct TYPE_10__ {int /*<<< orphan*/  accessLocation; int /*<<< orphan*/  accessMethod; } ;
typedef  TYPE_3__ Extension ;
typedef  TYPE_4__ AuthorityInfoAccessSyntax ;

/* Variables and functions */
 int /*<<< orphan*/  HX509_VALIDATE_F_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cert_status*,int,TYPE_3__ const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  validate_vprint ; 

__attribute__((used)) static int
FUNC8(hx509_validate_ctx ctx,
			  struct cert_status *status,
			  enum critical_flag cf,
			  const Extension *e)
{
    AuthorityInfoAccessSyntax aia;
    size_t size;
    int ret;
    size_t i;

    FUNC0(ctx, status, cf, e);

    ret = FUNC1(e->extnValue.data,
					   e->extnValue.length,
					   &aia, &size);
    if (ret) {
	FUNC6("\tret = %d while decoding AuthorityInfoAccessSyntax\n", ret);
	return 0;
    }

    for (i = 0; i < aia.len; i++) {
	char *str;
	FUNC7(ctx, HX509_VALIDATE_F_VERBOSE,
		       "\ttype: ");
	FUNC5(&aia.val[i].accessMethod, validate_vprint, ctx);
	FUNC4(&aia.val[i].accessLocation, &str);
	FUNC7(ctx, HX509_VALIDATE_F_VERBOSE,
		       "\n\tdirname: %s\n", str);
	FUNC2(str);
    }
    FUNC3(&aia);

    return 0;
}