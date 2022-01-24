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
typedef  int /*<<< orphan*/  hx509_pem_header ;
typedef  int /*<<< orphan*/  hx509_name ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_cert ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char*,char*) ; 

__attribute__((used)) static int
FUNC6(hx509_context contextp, void *ctx, hx509_cert cert)
{
    hx509_pem_header **header = ctx;
    char *signer_name = NULL;
    hx509_name name;
    int ret;

    ret = FUNC2(cert, &name);
    if (ret)
	FUNC0(1, "hx509_cert_get_subject");

    ret = FUNC4(name, &signer_name);
    FUNC3(&name);
    if (ret)
	FUNC0(1, "hx509_name_to_string");

    FUNC5(header, "Signer", signer_name);

    FUNC1(signer_name);
    return 0;
}