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
struct foo {char* id; char* label; } ;
typedef  int /*<<< orphan*/ * hx509_lock ;
typedef  int /*<<< orphan*/  hx509_certs ;
typedef  int /*<<< orphan*/  CK_RV ;

/* Variables and functions */
 int /*<<< orphan*/  CKR_GENERAL_ERROR ; 
 int /*<<< orphan*/  CKR_OK ; 
 int HX509_CERTS_UNPROTECT_ALL ; 
 int /*<<< orphan*/  add_cert ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,char const*) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct foo*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static CK_RV
FUNC10(const char *cert_file,
		const char *pin,
		char *id,
		char *label)
{
    hx509_certs certs;
    hx509_lock lock = NULL;
    int ret, flags = 0;

    struct foo foo;
    foo.id = id;
    foo.label = label;

    if (pin == NULL)
	flags |= HX509_CERTS_UNPROTECT_ALL;

    if (pin) {
	char *str;
	FUNC0(&str, "PASS:%s", pin);

	FUNC6(context, &lock);
	FUNC5(lock, str);

	FUNC7(str, 0, FUNC9(str));
	FUNC1(str);
    }

    ret = FUNC3(context, cert_file, flags, lock, &certs);
    if (ret) {
	FUNC8("failed to open file %s\n", cert_file);
	return CKR_GENERAL_ERROR;
    }

    ret = FUNC4(context, certs, add_cert, &foo);
    FUNC2(&certs);
    if (ret) {
	FUNC8("failed adding certs from file %s\n", cert_file);
	return CKR_GENERAL_ERROR;
    }

    return CKR_OK;
}