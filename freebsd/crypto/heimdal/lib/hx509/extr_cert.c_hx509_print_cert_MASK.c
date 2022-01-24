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
typedef  int /*<<< orphan*/  hx509_name ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_cert ;
typedef  int /*<<< orphan*/  heim_integer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/ * stderr ; 

int
FUNC11(hx509_context context, hx509_cert cert, FILE *out)
{
    hx509_name name;
    char *str;
    int ret;

    if (out == NULL)
	out = stderr;

    ret = FUNC4(cert, &name);
    if (ret)
	return ret;
    FUNC9(name, &str);
    FUNC8(&name);
    FUNC2(out, "    issuer:  \"%s\"\n", str);
    FUNC3(str);

    ret = FUNC6(cert, &name);
    if (ret)
	return ret;
    FUNC9(name, &str);
    FUNC8(&name);
    FUNC2(out, "    subject: \"%s\"\n", str);
    FUNC3(str);

    {
	heim_integer serialNumber;

	ret = FUNC5(cert, &serialNumber);
	if (ret)
	    return ret;
	ret = FUNC1(&serialNumber, &str);
	if (ret)
	    return ret;
	FUNC0(&serialNumber);
	FUNC2(out, "    serial: %s\n", str);
	FUNC3(str);
    }

    FUNC10("    keyusage: ");
    ret = FUNC7(context, cert, &str);
    if (ret == 0) {
	FUNC2(out, "%s\n", str);
	FUNC3(str);
    } else
	FUNC2(out, "no");

    return 0;
}