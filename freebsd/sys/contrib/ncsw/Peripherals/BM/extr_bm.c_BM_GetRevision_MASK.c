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
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_Error ;
typedef  int /*<<< orphan*/  t_BmRevisionInfo ;
typedef  int /*<<< orphan*/  t_Bm ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_NULL_POINTER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

t_Error FUNC2(t_Handle h_Bm, t_BmRevisionInfo *p_BmRevisionInfo)
{
    t_Bm        *p_Bm = (t_Bm*)h_Bm;

    FUNC1(p_Bm, E_INVALID_HANDLE);
    FUNC1(p_BmRevisionInfo, E_NULL_POINTER);

    return FUNC0(p_Bm, p_BmRevisionInfo);
}