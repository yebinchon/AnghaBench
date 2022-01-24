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
struct TYPE_3__ {scalar_t__ netEnvId; scalar_t__ valid; int /*<<< orphan*/  h_FmPcd; } ;
typedef  TYPE_1__ t_FmPcdKgScheme ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ ILLEGAL_NETENV ; 
 scalar_t__ TRUE ; 

__attribute__((used)) static void  FUNC2(t_FmPcdKgScheme *p_Scheme)
{
    FUNC0(!p_Scheme->valid);
    if (p_Scheme->netEnvId != ILLEGAL_NETENV)
        FUNC1(p_Scheme->h_FmPcd, p_Scheme->netEnvId);
    p_Scheme->valid = TRUE;
}