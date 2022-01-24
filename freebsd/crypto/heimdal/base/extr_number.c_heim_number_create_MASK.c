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
typedef  scalar_t__ heim_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  HEIM_TID_NUMBER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  _heim_number_object ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 

heim_number_t
FUNC2(int number)
{
    heim_number_t n;

    if (number < 0xffffff && number >= 0)
	return FUNC1(number, HEIM_TID_NUMBER);

    n = FUNC0(&_heim_number_object, sizeof(int));
    if (n)
	*((int *)n) = number;
    return n;
}