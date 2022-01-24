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
struct TYPE_3__ {int len; int /*<<< orphan*/ * val; } ;
typedef  TYPE_1__ hx509_name_constraints ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  NameConstraints ;
typedef  int /*<<< orphan*/  Certificate ;

/* Variables and functions */
 int ENOMEM ; 
 int HX509_EXTENSION_NOT_FOUND ; 
 int HX509_VERIFY_CONSTRAINTS ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC6(hx509_context context, const Certificate *c, int not_ca,
		     hx509_name_constraints *nc)
{
    NameConstraints tnc;
    int ret;

    ret = FUNC1(c, &tnc);
    if (ret == HX509_EXTENSION_NOT_FOUND)
	return 0;
    else if (ret) {
	FUNC4(context, 0, ret, "Failed getting NameConstraints");
	return ret;
    } else if (not_ca) {
	ret = HX509_VERIFY_CONSTRAINTS;
	FUNC4(context, 0, ret, "Not a CA and "
			       "have NameConstraints");
    } else {
	NameConstraints *val;
	val = FUNC5(nc->val, sizeof(nc->val[0]) * (nc->len + 1));
	if (val == NULL) {
	    FUNC3(context);
	    ret = ENOMEM;
	    goto out;
	}
	nc->val = val;
	ret = FUNC0(&tnc, &nc->val[nc->len]);
	if (ret) {
	    FUNC3(context);
	    goto out;
	}
	nc->len += 1;
    }
out:
    FUNC2(&tnc);
    return ret;
}