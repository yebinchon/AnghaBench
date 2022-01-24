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
typedef  int /*<<< orphan*/  hx509_private_key ;
typedef  TYPE_1__* hx509_cert ;
struct TYPE_3__ {scalar_t__ private_key; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 

int
FUNC2(hx509_cert cert, hx509_private_key private_key)
{
    if (cert->private_key)
	FUNC1(&cert->private_key);
    cert->private_key = FUNC0(private_key);
    return 0;
}