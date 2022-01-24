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
struct TYPE_3__ {scalar_t__ expand; } ;
typedef  TYPE_1__ SSL ;
typedef  int /*<<< orphan*/  COMP_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/  const* FUNC0 (scalar_t__) ; 

const COMP_METHOD *FUNC1(const SSL *s)
{
#ifndef OPENSSL_NO_COMP
    return s->expand ? FUNC0(s->expand) : NULL;
#else
    return NULL;
#endif
}