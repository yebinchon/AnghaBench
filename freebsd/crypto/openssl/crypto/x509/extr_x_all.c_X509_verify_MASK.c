#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  signature; } ;
struct TYPE_4__ {TYPE_3__ cert_info; int /*<<< orphan*/  signature; int /*<<< orphan*/  sig_alg; } ;
typedef  TYPE_1__ X509 ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  X509_CINF ; 

int FUNC3(X509 *a, EVP_PKEY *r)
{
    if (FUNC2(&a->sig_alg, &a->cert_info.signature))
        return 0;
    return (FUNC1(FUNC0(X509_CINF), &a->sig_alg,
                             &a->signature, &a->cert_info, r));
}