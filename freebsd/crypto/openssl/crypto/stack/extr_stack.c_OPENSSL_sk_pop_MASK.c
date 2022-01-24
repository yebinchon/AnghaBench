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
struct TYPE_4__ {scalar_t__ num; } ;
typedef  TYPE_1__ OPENSSL_STACK ;

/* Variables and functions */
 void* FUNC0 (TYPE_1__*,scalar_t__) ; 

void *FUNC1(OPENSSL_STACK *st)
{
    if (st == NULL || st->num == 0)
        return NULL;
    return FUNC0(st, st->num - 1);
}