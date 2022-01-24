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
typedef  TYPE_1__* hx509_cert ;
struct TYPE_3__ {int /*<<< orphan*/ * friendlyname; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 

int
FUNC2(hx509_cert cert, const char *name)
{
    if (cert->friendlyname)
	FUNC0(cert->friendlyname);
    cert->friendlyname = FUNC1(name);
    if (cert->friendlyname == NULL)
	return ENOMEM;
    return 0;
}