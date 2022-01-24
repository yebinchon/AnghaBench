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
struct TYPE_3__ {int /*<<< orphan*/ * object; } ;
typedef  TYPE_1__ X509_EXTENSION ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*) ; 

int FUNC2(X509_EXTENSION *ex, const ASN1_OBJECT *obj)
{
    if ((ex == NULL) || (obj == NULL))
        return 0;
    FUNC0(ex->object);
    ex->object = FUNC1(obj);
    return ex->object != NULL;
}