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
struct TYPE_4__ {scalar_t__ sig_len; int /*<<< orphan*/ * sig; } ;
typedef  TYPE_1__ SCT ;

/* Variables and functions */
 scalar_t__ NID_undef ; 
 scalar_t__ FUNC0 (TYPE_1__ const*) ; 

int FUNC1(const SCT *sct)
{
    return FUNC0(sct) != NID_undef &&
        sct->sig != NULL && sct->sig_len > 0;
}