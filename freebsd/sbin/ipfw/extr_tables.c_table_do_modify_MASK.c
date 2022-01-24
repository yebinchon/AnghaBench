#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tbuf ;
struct TYPE_6__ {int /*<<< orphan*/  opheader; } ;
typedef  TYPE_1__ ipfw_xtable_info ;
typedef  TYPE_1__ ipfw_obj_header ;

/* Variables and functions */
 int /*<<< orphan*/  IP_FW_TABLE_XMODIFY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC2(ipfw_obj_header *oh, ipfw_xtable_info *i)
{
	char tbuf[sizeof(ipfw_obj_header) + sizeof(ipfw_xtable_info)];
	int error;

	FUNC1(tbuf, oh, sizeof(*oh));
	FUNC1(tbuf + sizeof(*oh), i, sizeof(*i));
	oh = (ipfw_obj_header *)tbuf;

	error = FUNC0(IP_FW_TABLE_XMODIFY, &oh->opheader, sizeof(tbuf));

	return (error);
}