#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct timeval {int dummy; } ;

/* Variables and functions */
 struct timeval _kdc_now ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 

void
FUNC1(struct timeval *tv)
{
    if (tv == NULL)
	FUNC0(&_kdc_now, NULL);
    else
	_kdc_now = *tv;
}