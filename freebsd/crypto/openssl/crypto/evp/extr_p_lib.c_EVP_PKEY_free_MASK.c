#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  attributes; int /*<<< orphan*/  lock; int /*<<< orphan*/  references; } ;
typedef  TYPE_1__ EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  X509_ATTRIBUTE_free ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(EVP_PKEY *x)
{
    int i;

    if (x == NULL)
        return;

    FUNC0(&x->references, &i, x->lock);
    FUNC5("EVP_PKEY", x);
    if (i > 0)
        return;
    FUNC4(i < 0);
    FUNC2(x);
    FUNC1(x->lock);
    FUNC6(x->attributes, X509_ATTRIBUTE_free);
    FUNC3(x);
}