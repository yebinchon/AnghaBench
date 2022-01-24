#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* bag; } ;
struct TYPE_8__ {TYPE_2__ value; } ;
struct TYPE_6__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ PKCS12_SAFEBAG ;

/* Variables and functions */
 int NID_certBag ; 
 int NID_crlBag ; 
 int NID_secretBag ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__ const*) ; 

int FUNC2(const PKCS12_SAFEBAG *bag)
{
    int btype = FUNC1(bag);

    if (btype != NID_certBag && btype != NID_crlBag && btype != NID_secretBag)
        return -1;
    return FUNC0(bag->value.bag->type);
}