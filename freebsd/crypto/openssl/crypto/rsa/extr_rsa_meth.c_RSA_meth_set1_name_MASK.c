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
struct TYPE_3__ {char* name; } ;
typedef  TYPE_1__ RSA_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  RSA_F_RSA_METH_SET1_NAME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(RSA_METHOD *meth, const char *name)
{
    char *tmpname = FUNC1(name);

    if (tmpname == NULL) {
        FUNC2(RSA_F_RSA_METH_SET1_NAME, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    FUNC0(meth->name);
    meth->name = tmpname;

    return 1;
}