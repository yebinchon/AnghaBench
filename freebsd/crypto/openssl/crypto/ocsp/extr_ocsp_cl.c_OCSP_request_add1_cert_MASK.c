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
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_6__ {TYPE_1__* optionalSignature; } ;
struct TYPE_5__ {int /*<<< orphan*/ * certs; } ;
typedef  TYPE_1__ OCSP_SIGNATURE ;
typedef  TYPE_2__ OCSP_REQUEST ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(OCSP_REQUEST *req, X509 *cert)
{
    OCSP_SIGNATURE *sig;
    if (req->optionalSignature == NULL)
        req->optionalSignature = FUNC0();
    sig = req->optionalSignature;
    if (sig == NULL)
        return 0;
    if (cert == NULL)
        return 1;
    if (sig->certs == NULL
        && (sig->certs = FUNC2()) == NULL)
        return 0;

    if (!FUNC3(sig->certs, cert))
        return 0;
    FUNC1(cert);
    return 1;
}