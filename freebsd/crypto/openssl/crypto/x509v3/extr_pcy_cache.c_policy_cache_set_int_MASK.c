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
struct TYPE_4__ {scalar_t__ type; } ;
typedef  TYPE_1__ ASN1_INTEGER ;

/* Variables and functions */
 long FUNC0 (TYPE_1__*) ; 
 scalar_t__ V_ASN1_NEG_INTEGER ; 

__attribute__((used)) static int FUNC1(long *out, ASN1_INTEGER *value)
{
    if (value == NULL)
        return 1;
    if (value->type == V_ASN1_NEG_INTEGER)
        return 0;
    *out = FUNC0(value);
    return 1;
}