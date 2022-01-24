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
typedef  int /*<<< orphan*/  X509_EXTENSION ;
struct TYPE_4__ {int /*<<< orphan*/  extensions; } ;
struct TYPE_5__ {TYPE_1__ crl; } ;
typedef  TYPE_2__ X509_CRL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC1(X509_CRL *x, X509_EXTENSION *ex, int loc)
{
    return (FUNC0(&(x->crl.extensions), ex, loc) != NULL);
}