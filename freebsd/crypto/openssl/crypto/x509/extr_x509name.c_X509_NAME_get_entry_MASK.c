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
typedef  int /*<<< orphan*/  X509_NAME_ENTRY ;
struct TYPE_3__ {int /*<<< orphan*/  entries; } ;
typedef  TYPE_1__ X509_NAME ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 

X509_NAME_ENTRY *FUNC2(const X509_NAME *name, int loc)
{
    if (name == NULL || FUNC0(name->entries) <= loc
        || loc < 0)
        return NULL;

    return FUNC1(name->entries, loc);
}