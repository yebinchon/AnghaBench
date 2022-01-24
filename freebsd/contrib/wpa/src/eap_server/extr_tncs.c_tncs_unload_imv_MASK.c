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
struct tnc_if_imv {scalar_t__ dlhandle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct tnc_if_imv*) ; 
 int /*<<< orphan*/  FUNC2 (struct tnc_if_imv*) ; 

__attribute__((used)) static void FUNC3(struct tnc_if_imv *imv)
{
	FUNC2(imv);

	if (imv->dlhandle)
		FUNC0(imv->dlhandle);

	FUNC1(imv);
}