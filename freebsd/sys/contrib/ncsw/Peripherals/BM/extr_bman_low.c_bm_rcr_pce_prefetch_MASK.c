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
struct bm_rcr {scalar_t__ pmode; } ;
struct bm_portal {int /*<<< orphan*/  rcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RCR_PI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ e_BmPortalPCE ; 

void FUNC3(struct bm_portal *portal)
{
    FUNC0(((struct bm_rcr *)&portal->rcr)->pmode == e_BmPortalPCE);
    FUNC1(RCR_PI);
    FUNC2(RCR_PI);
}