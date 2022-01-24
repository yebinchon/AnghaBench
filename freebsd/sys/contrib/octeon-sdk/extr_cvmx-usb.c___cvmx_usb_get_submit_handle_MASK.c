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
typedef  int /*<<< orphan*/  cvmx_usb_transaction_t ;
struct TYPE_3__ {scalar_t__ transaction; } ;
typedef  TYPE_1__ cvmx_usb_internal_state_t ;

/* Variables and functions */

__attribute__((used)) static inline int FUNC0(cvmx_usb_internal_state_t *usb,
                                        cvmx_usb_transaction_t *transaction)
{
    return ((unsigned long)transaction - (unsigned long)usb->transaction) /
            sizeof(*transaction);
}