#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* hx509_crl ;
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_5__ {int /*<<< orphan*/  revoked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void
FUNC3(hx509_context context, hx509_crl *crl)
{
    if (*crl == NULL)
	return;
    FUNC1(&(*crl)->revoked);
    FUNC2(*crl, 0, sizeof(**crl));
    FUNC0(*crl);
    *crl = NULL;
}