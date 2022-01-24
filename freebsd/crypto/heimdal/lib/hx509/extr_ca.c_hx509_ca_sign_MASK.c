#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_cert ;
typedef  int /*<<< orphan*/  hx509_ca_tbs ;
typedef  int /*<<< orphan*/  ai ;
struct TYPE_5__ {int /*<<< orphan*/  subject; } ;
struct TYPE_6__ {TYPE_1__ tbsCertificate; } ;
typedef  TYPE_2__ Certificate ;
typedef  int /*<<< orphan*/  AuthorityKeyIdentifier ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int
FUNC6(hx509_context context,
	      hx509_ca_tbs tbs,
	      hx509_cert signer,
	      hx509_cert *certificate)
{
    const Certificate *signer_cert;
    AuthorityKeyIdentifier ai;
    int ret;

    FUNC5(&ai, 0, sizeof(ai));

    signer_cert = FUNC1(signer);

    ret = FUNC4(context, signer_cert, &ai);
    if (ret)
	goto out;

    ret = FUNC2(context,
		  tbs,
		  FUNC0(signer),
		  &ai,
		  &signer_cert->tbsCertificate.subject,
		  certificate);

out:
    FUNC3(&ai);

    return ret;
}