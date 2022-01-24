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
struct TYPE_6__ {unsigned char* data; scalar_t__ flags; int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ ASN1_GENERALIZEDTIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  V_ASN1_GENERALIZEDTIME ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

int FUNC3(ASN1_GENERALIZEDTIME *s, const char *str)
{
    ASN1_GENERALIZEDTIME t;

    t.type = V_ASN1_GENERALIZEDTIME;
    t.length = FUNC2(str);
    t.data = (unsigned char *)str;
    t.flags = 0;

    if (!FUNC0(&t))
        return 0;

    if (s != NULL && !FUNC1(s, &t))
        return 0;

    return 1;
}