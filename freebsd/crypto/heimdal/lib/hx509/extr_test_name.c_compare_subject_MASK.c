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
typedef  int /*<<< orphan*/  hx509_name ;
typedef  int /*<<< orphan*/  hx509_cert ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(hx509_cert c1, hx509_cert c2, int *l)
{
    hx509_name n1, n2;
    int ret;

    ret = FUNC0(c1, &n1);
    if (ret) return 1;
    ret = FUNC0(c2, &n2);
    if (ret) return 1;

    *l = FUNC1(n1, n2);
    FUNC2(&n1);
    FUNC2(&n2);

    return 0;
}