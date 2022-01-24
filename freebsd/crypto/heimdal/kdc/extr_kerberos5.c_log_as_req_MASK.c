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
struct rk_strpool {int dummy; } ;
typedef  int /*<<< orphan*/  krb5_kdc_configuration ;
typedef  scalar_t__ krb5_error_code ;
typedef  char* krb5_enctype ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  fixedstr ;
struct TYPE_4__ {size_t len; char** val; } ;
struct TYPE_5__ {int /*<<< orphan*/  kdc_options; TYPE_1__ etype; } ;
typedef  TYPE_2__ KDC_REQ_BODY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,char**) ; 
 char* FUNC5 (struct rk_strpool*) ; 
 struct rk_strpool* FUNC6 (struct rk_strpool*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC8(krb5_context context,
	   krb5_kdc_configuration *config,
	   krb5_enctype cetype,
	   krb5_enctype setype,
	   const KDC_REQ_BODY *b)
{
    krb5_error_code ret;
    struct rk_strpool *p;
    char *str;
    size_t i;

    p = FUNC6(NULL, "%s", "Client supported enctypes: ");

    for (i = 0; i < b->etype.len; i++) {
	ret = FUNC4(context, b->etype.val[i], &str);
	if (ret == 0) {
	    p = FUNC6(p, "%s", str);
	    FUNC2(str);
	} else
	    p = FUNC6(p, "%d", b->etype.val[i]);
	if (p && i + 1 < b->etype.len)
	    p = FUNC6(p, ", ");
	if (p == NULL) {
	    FUNC3(context, config, 0, "out of memory");
	    return;
	}
    }
    if (p == NULL)
	p = FUNC6(p, "no encryption types");

    {
	char *cet;
	char *set;

	ret = FUNC4(context, cetype, &cet);
	if(ret == 0) {
	    ret = FUNC4(context, setype, &set);
	    if (ret == 0) {
		p = FUNC6(p, ", using %s/%s", cet, set);
		FUNC2(set);
	    }
	    FUNC2(cet);
	}
	if (ret != 0)
	    p = FUNC6(p, ", using enctypes %d/%d",
				 cetype, setype);
    }

    str = FUNC5(p);
    FUNC3(context, config, 0, "%s", str);
    FUNC2(str);

    {
	char fixedstr[128];
	FUNC7(FUNC0(b->kdc_options), FUNC1(),
		      fixedstr, sizeof(fixedstr));
	if(*fixedstr)
	    FUNC3(context, config, 0, "Requested flags: %s", fixedstr);
    }
}