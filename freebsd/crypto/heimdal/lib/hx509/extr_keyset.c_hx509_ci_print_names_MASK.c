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
typedef  int /*<<< orphan*/  hx509_name ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_cert ;
struct TYPE_4__ {int /*<<< orphan*/  issuer; int /*<<< orphan*/  subject; } ;
struct TYPE_5__ {TYPE_1__ tbsCertificate; } ;
typedef  TYPE_2__ Certificate ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char**) ; 

int
FUNC6(hx509_context context, void *ctx, hx509_cert c)
{
    Certificate *cert;
    hx509_name n;
    char *s, *i;

    cert = FUNC0(c);

    FUNC1(&cert->tbsCertificate.subject, &n);
    FUNC5(n, &s);
    FUNC4(&n);
    FUNC1(&cert->tbsCertificate.issuer, &n);
    FUNC5(n, &i);
    FUNC4(&n);
    FUNC2(ctx, "subject: %s\nissuer: %s\n", s, i);
    FUNC3(s);
    FUNC3(i);
    return 0;
}