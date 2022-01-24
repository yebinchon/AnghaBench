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
struct TYPE_3__ {int /*<<< orphan*/ * tst_info; int /*<<< orphan*/  status_info; } ;
typedef  TYPE_1__ TS_RESP ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(BIO *bio, TS_RESP *a)
{
    FUNC0(bio, "Status info:\n");
    FUNC1(bio, a->status_info);

    FUNC0(bio, "\nTST info:\n");
    if (a->tst_info != NULL)
        FUNC2(bio, a->tst_info);
    else
        FUNC0(bio, "Not included.\n");

    return 1;
}