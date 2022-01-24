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
typedef  int /*<<< orphan*/  X509_NAME ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(X509_NAME **xn, X509_NAME *name)
{
    if (*xn == name)
        return *xn != NULL;
    if ((name = FUNC0(name)) == NULL)
        return 0;
    FUNC1(*xn);
    *xn = name;
    return 1;
}