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
struct TYPE_3__ {int purpose; } ;
typedef  TYPE_1__ X509_PURPOSE ;

/* Variables and functions */
 int X509_PURPOSE_COUNT ; 
 int X509_PURPOSE_MAX ; 
 int X509_PURPOSE_MIN ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * xptable ; 

int FUNC1(int purpose)
{
    X509_PURPOSE tmp;
    int idx;

    if ((purpose >= X509_PURPOSE_MIN) && (purpose <= X509_PURPOSE_MAX))
        return purpose - X509_PURPOSE_MIN;
    if (xptable == NULL)
        return -1;
    tmp.purpose = purpose;
    idx = FUNC0(xptable, &tmp);
    if (idx < 0)
        return -1;
    return idx + X509_PURPOSE_COUNT;
}