#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ASN1_TYPE ;
typedef  void ASN1_STRING ;
typedef  void ASN1_OBJECT ;

/* Variables and functions */
 void* FUNC0 (void const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,void*) ; 
 void* FUNC2 (void const*) ; 
 int V_ASN1_BOOLEAN ; 
 int V_ASN1_OBJECT ; 

int FUNC3(ASN1_TYPE *a, int type, const void *value)
{
    if (!value || (type == V_ASN1_BOOLEAN)) {
        void *p = (void *)value;
        FUNC1(a, type, p);
    } else if (type == V_ASN1_OBJECT) {
        ASN1_OBJECT *odup;
        odup = FUNC2(value);
        if (!odup)
            return 0;
        FUNC1(a, type, odup);
    } else {
        ASN1_STRING *sdup;
        sdup = FUNC0(value);
        if (!sdup)
            return 0;
        FUNC1(a, type, sdup);
    }
    return 1;
}