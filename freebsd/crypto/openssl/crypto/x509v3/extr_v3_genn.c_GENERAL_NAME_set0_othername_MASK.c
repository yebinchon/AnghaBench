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
struct TYPE_4__ {int /*<<< orphan*/ * value; int /*<<< orphan*/ * type_id; } ;
typedef  TYPE_1__ OTHERNAME ;
typedef  int /*<<< orphan*/  GENERAL_NAME ;
typedef  int /*<<< orphan*/  ASN1_TYPE ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  GEN_OTHERNAME ; 
 TYPE_1__* FUNC2 () ; 

int FUNC3(GENERAL_NAME *gen,
                                ASN1_OBJECT *oid, ASN1_TYPE *value)
{
    OTHERNAME *oth;
    oth = FUNC2();
    if (oth == NULL)
        return 0;
    FUNC0(oth->value);
    oth->type_id = oid;
    oth->value = value;
    FUNC1(gen, GEN_OTHERNAME, oth);
    return 1;
}