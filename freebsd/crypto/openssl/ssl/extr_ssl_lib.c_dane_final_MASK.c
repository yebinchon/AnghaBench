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
struct TYPE_3__ {int mdpth; int pdpth; int /*<<< orphan*/ * mtlsa; int /*<<< orphan*/ * mcert; int /*<<< orphan*/ * certs; int /*<<< orphan*/ * trecs; } ;
typedef  TYPE_1__ SSL_DANE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tlsa_free ; 

__attribute__((used)) static void FUNC3(SSL_DANE *dane)
{
    FUNC2(dane->trecs, tlsa_free);
    dane->trecs = NULL;

    FUNC1(dane->certs, X509_free);
    dane->certs = NULL;

    FUNC0(dane->mcert);
    dane->mcert = NULL;
    dane->mtlsa = NULL;
    dane->mdpth = -1;
    dane->pdpth = -1;
}