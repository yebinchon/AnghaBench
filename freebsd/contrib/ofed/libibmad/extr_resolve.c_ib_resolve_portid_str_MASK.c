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
typedef  int /*<<< orphan*/  ib_portid_t ;
typedef  enum MAD_DEST { ____Placeholder_MAD_DEST } MAD_DEST ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmp ; 

int FUNC1(ib_portid_t * portid, char *addr_str,
			  enum MAD_DEST dest_type, ib_portid_t * sm_id)
{
	return FUNC0(portid, addr_str, dest_type,
					 sm_id, ibmp);
}