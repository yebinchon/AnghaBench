#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* sct; struct TYPE_4__* sig; struct TYPE_4__* ext; struct TYPE_4__* log_id; } ;
typedef  TYPE_1__ SCT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(SCT *sct)
{
    if (sct == NULL)
        return;

    FUNC0(sct->log_id);
    FUNC0(sct->ext);
    FUNC0(sct->sig);
    FUNC0(sct->sct);
    FUNC0(sct);
}