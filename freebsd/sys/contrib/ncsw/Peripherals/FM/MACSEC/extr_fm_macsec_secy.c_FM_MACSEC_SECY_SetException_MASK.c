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
typedef  int t_Handle ;
typedef  int /*<<< orphan*/  t_Error ;
typedef  int e_FmMacsecExceptions ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOT_SUPPORTED ; 
 int /*<<< orphan*/  MINOR ; 
 int /*<<< orphan*/  NO_MSG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

t_Error FUNC2(t_Handle h_FmMacsecSecY, e_FmMacsecExceptions exception, bool enable)
{
   FUNC1(h_FmMacsecSecY);FUNC1(exception);FUNC1(enable);
   FUNC0(MINOR, E_NOT_SUPPORTED, NO_MSG);
}