#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* hx509_name ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  heim_oid ;
struct TYPE_7__ {int /*<<< orphan*/  element; } ;
struct TYPE_6__ {TYPE_5__ der_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int HX509_NAME_MALFORMED ; 
 int HX509_PARSING_NAME_FAILED ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  choice_Name_rdnSequence ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 char* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,size_t) ; 
 char* FUNC8 (char const*,char) ; 
 int FUNC9 (char const*,int,int /*<<< orphan*/ *) ; 
 size_t FUNC10 (char const*) ; 

int
FUNC11(hx509_context context, const char *str, hx509_name *name)
{
    const char *p, *q;
    size_t len;
    hx509_name n;
    int ret;

    *name = NULL;

    n = FUNC1(1, sizeof(*n));
    if (n == NULL) {
	FUNC5(context, 0, ENOMEM, "out of memory");
	return ENOMEM;
    }

    n->der_name.element = choice_Name_rdnSequence;

    p = str;

    while (p != NULL && *p != '\0') {
	heim_oid oid;
	int last;

	q = FUNC8(p, ',');
	if (q) {
	    len = (q - p);
	    last = 1;
	} else {
	    len = FUNC10(p);
	    last = 0;
	}

	q = FUNC8(p, '=');
	if (q == NULL) {
	    ret = HX509_PARSING_NAME_FAILED;
	    FUNC5(context, 0, ret, "missing = in %s", p);
	    goto out;
	}
	if (q == p) {
	    ret = HX509_PARSING_NAME_FAILED;
	    FUNC5(context, 0, ret,
				   "missing name before = in %s", p);
	    goto out;
	}

	if ((size_t)(q - p) > len) {
	    ret = HX509_PARSING_NAME_FAILED;
	    FUNC5(context, 0, ret, " = after , in %s", p);
	    goto out;
	}

	ret = FUNC9(p, q - p, &oid);
	if (ret) {
	    ret = HX509_PARSING_NAME_FAILED;
	    FUNC5(context, 0, ret,
				   "unknown type: %.*s", (int)(q - p), p);
	    goto out;
	}

	{
	    size_t pstr_len = len - (q - p) - 1;
	    const char *pstr = p + (q - p) + 1;
	    char *r;

	    r = FUNC6(pstr_len + 1);
	    if (r == NULL) {
		FUNC2(&oid);
		ret = ENOMEM;
		FUNC5(context, 0, ret, "out of memory");
		goto out;
	    }
	    FUNC7(r, pstr, pstr_len);
	    r[pstr_len] = '\0';

	    ret = FUNC0(context, &n->der_name, 0, &oid, r);
	    FUNC3(r);
	    FUNC2(&oid);
	    if(ret)
		goto out;
	}
	p += len + last;
    }

    *name = n;

    return 0;
out:
    FUNC4(&n);
    return HX509_NAME_MALFORMED;
}