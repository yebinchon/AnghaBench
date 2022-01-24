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
struct private_key {int /*<<< orphan*/ * private_key; } ;
typedef  int /*<<< orphan*/  hx509_cursor ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_certs ;
typedef  int /*<<< orphan*/ * hx509_cert ;

/* Variables and functions */
 int HX509_CERT_NOT_FOUND ; 
 int HX509_PRIVATE_KEY_MISSING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int
FUNC9(hx509_context context, struct private_key *value, hx509_certs certs)
{
    hx509_cursor cursor;
    hx509_cert c;
    int ret, found = HX509_CERT_NOT_FOUND;

    if (value->private_key == NULL) {
	FUNC8(context, 0, HX509_PRIVATE_KEY_MISSING,
			       "No private key to compare with");
	return HX509_PRIVATE_KEY_MISSING;
    }

    ret = FUNC6(context, certs, &cursor);
    if (ret)
	return ret;

    c = NULL;
    while (1) {
	ret = FUNC5(context, certs, cursor, &c);
	if (ret)
	    break;
	if (c == NULL)
	    break;
	if (FUNC1(c)) {
	    FUNC3(c);
	    continue;
	}

	ret = FUNC2(c, value->private_key);
	if (ret) {
	    FUNC0(c, value->private_key);
	    FUNC3(c);
	    found = 0;
	    break;
	}
	FUNC3(c);
    }

    FUNC4(context, certs, cursor);

    if (found)
	FUNC7(context);

    return found;
}