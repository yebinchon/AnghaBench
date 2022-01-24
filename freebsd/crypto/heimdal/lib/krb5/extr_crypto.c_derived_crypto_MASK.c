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
typedef  TYPE_2__* krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int krb5_boolean ;
struct TYPE_5__ {TYPE_1__* et; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int F_DERIVED ; 

__attribute__((used)) static krb5_boolean
FUNC0(krb5_context context,
	       krb5_crypto crypto)
{
    return (crypto->et->flags & F_DERIVED) != 0;
}