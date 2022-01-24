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
struct verify {int /*<<< orphan*/  errors; scalar_t__ hostname; int /*<<< orphan*/  count; int /*<<< orphan*/  chain; int /*<<< orphan*/  ctx; } ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_cert ;

/* Variables and functions */
 int /*<<< orphan*/  HX509_HN_HOSTNAME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int
FUNC5(hx509_context hxcontext, void *ctx, hx509_cert c)
{
    struct verify *v = ctx;
    int ret;

    ret = FUNC3(hxcontext, v->ctx, c, v->chain);
    if (ret) {
	char *s = FUNC1(hxcontext, ret);
	FUNC4("verify_path: %s: %d\n", s, ret);
	FUNC0(s);
	v->errors++;
    } else {
	v->count++;
	FUNC4("path ok\n");
    }

    if (v->hostname) {
	ret = FUNC2(hxcontext, c, 0, HX509_HN_HOSTNAME,
				    v->hostname, NULL, 0);
	if (ret) {
	    FUNC4("verify_hostname: %d\n", ret);
	    v->errors++;
	}
    }

    return 0;
}