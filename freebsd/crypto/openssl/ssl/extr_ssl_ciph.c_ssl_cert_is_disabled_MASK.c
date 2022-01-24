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
struct TYPE_3__ {int amask; } ;
typedef  TYPE_1__ SSL_CERT_LOOKUP ;

/* Variables and functions */
 int disabled_auth_mask ; 
 TYPE_1__* FUNC0 (size_t) ; 

int FUNC1(size_t idx)
{
    const SSL_CERT_LOOKUP *cl = FUNC0(idx);

    if (cl == NULL || (cl->amask & disabled_auth_mask) != 0)
        return 1;
    return 0;
}