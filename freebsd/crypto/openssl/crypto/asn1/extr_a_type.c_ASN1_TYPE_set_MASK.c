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
struct TYPE_4__ {int boolean; int /*<<< orphan*/ * ptr; } ;
struct TYPE_5__ {int type; TYPE_1__ value; } ;
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  TYPE_2__ ASN1_TYPE ;

/* Variables and functions */
 int V_ASN1_BOOLEAN ; 
 int V_ASN1_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC1(ASN1_TYPE *a, int type, void *value)
{
    if (a->type != V_ASN1_BOOLEAN
            && a->type != V_ASN1_NULL
            && a->value.ptr != NULL) {
        ASN1_TYPE **tmp_a = &a;
        FUNC0((ASN1_VALUE **)tmp_a, NULL, 0);
    }
    a->type = type;
    if (type == V_ASN1_BOOLEAN)
        a->value.boolean = value ? 0xff : 0;
    else
        a->value.ptr = value;
}