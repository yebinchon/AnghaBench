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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  enum MAD_FIELDS { ____Placeholder_MAD_FIELDS } MAD_FIELDS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int,int) ; 
 int ib_mad_f ; 

uint64_t FUNC1(void *buf, int base_offs, enum MAD_FIELDS field)
{
	return FUNC0(buf, base_offs, ib_mad_f + field);
}