#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  set; int /*<<< orphan*/  tablename; } ;
typedef  TYPE_1__ ipfw_xtable_info ;
struct TYPE_6__ {int /*<<< orphan*/  ntlv; } ;
typedef  TYPE_2__ ipfw_obj_header ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC2(ipfw_xtable_info *i, void *arg)
{
	ipfw_obj_header *oh;

	oh = (ipfw_obj_header *)arg;

	FUNC0(&oh->ntlv, i->tablename, i->set, 1);

	return (FUNC1(oh));
}