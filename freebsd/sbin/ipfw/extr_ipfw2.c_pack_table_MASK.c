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
typedef  int /*<<< orphan*/  uint16_t ;
struct tidx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPFW_TLV_TBL_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct tidx*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 

__attribute__((used)) static uint16_t
FUNC2(struct tidx *tstate, char *name)
{

	if (FUNC1(name) != 0)
		return (0);

	return (FUNC0(tstate, name, IPFW_TLV_TBL_NAME));
}