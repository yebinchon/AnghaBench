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
struct TYPE_6__ {int /*<<< orphan*/  field_mod_func; } ;
typedef  TYPE_1__ EC_GROUP ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,TYPE_1__ const*) ; 

int FUNC1(EC_GROUP *dest, const EC_GROUP *src)
{
    dest->field_mod_func = src->field_mod_func;

    return FUNC0(dest, src);
}