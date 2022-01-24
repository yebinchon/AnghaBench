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
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  Name ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  asn1_oid_id_at_commonName ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(hx509_context context, const Name *issuer, Name *subject)
{
    char *tstr;
    time_t t;
    int ret;

    ret = FUNC2(issuer, subject);
    if (ret) {
	FUNC5(context, 0, ret,
			       "Failed to copy subject name");
	return ret;
    }

    t = FUNC6(NULL);
    FUNC1(&tstr, "ts-%lu", (unsigned long)t);
    if (tstr == NULL) {
	FUNC5(context, 0, ENOMEM,
			       "Failed to copy subject name");
	return ENOMEM;
    }
    /* prefix with CN=<ts>,...*/
    ret = FUNC0(context, subject, 1, &asn1_oid_id_at_commonName, tstr);
    FUNC3(tstr);
    if (ret)
	FUNC4(subject);
    return ret;
}