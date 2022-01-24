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
struct TYPE_3__ {scalar_t__ netEnvId; int /*<<< orphan*/  valid; int /*<<< orphan*/  h_FmPcd; scalar_t__ owners; } ;
typedef  TYPE_1__ t_FmPcdKgScheme ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ ILLEGAL_NETENV ; 
 int /*<<< orphan*/  MINOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static t_Error FUNC2(t_FmPcdKgScheme *p_Scheme)
{
    if (p_Scheme->owners)
       FUNC1(MINOR, E_INVALID_STATE, ("Trying to delete a scheme that has ports bound to"));

    if (p_Scheme->netEnvId != ILLEGAL_NETENV)
        FUNC0(p_Scheme->h_FmPcd, p_Scheme->netEnvId);
    p_Scheme->valid = FALSE;

    return E_OK;
}