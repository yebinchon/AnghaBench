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
struct uuid_table {int dummy; } ;

/* Variables and functions */
 struct uuid_table* guid_tbl ; 
 int FUNC0 (struct uuid_table*) ; 

int
FUNC1(struct uuid_table **tbl)
{

	*tbl = guid_tbl;
	return (FUNC0(guid_tbl));
}