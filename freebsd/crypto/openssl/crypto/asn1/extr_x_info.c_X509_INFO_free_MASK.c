#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* enc_data; int /*<<< orphan*/  x_pkey; int /*<<< orphan*/  crl; int /*<<< orphan*/  x509; } ;
typedef  TYPE_1__ X509_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(X509_INFO *x)
{
    if (x == NULL)
        return;

    FUNC3(x->x509);
    FUNC1(x->crl);
    FUNC2(x->x_pkey);
    FUNC0(x->enc_data);
    FUNC0(x);
}