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
typedef  TYPE_1__* hx509_private_key ;
struct TYPE_4__ {scalar_t__ ref; } ;

/* Variables and functions */
 scalar_t__ UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

hx509_private_key
FUNC1(hx509_private_key key)
{
    if (key->ref == 0)
	FUNC0("key refcount <= 0 on ref");
    key->ref++;
    if (key->ref == UINT_MAX)
	FUNC0("key refcount == UINT_MAX on ref");
    return key;
}