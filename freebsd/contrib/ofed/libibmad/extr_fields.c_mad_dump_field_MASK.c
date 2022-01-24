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
typedef  enum MAD_FIELDS { ____Placeholder_MAD_FIELDS } MAD_FIELDS ;

/* Variables and functions */
 int IB_FIELD_LAST_ ; 
 int IB_NO_FIELD ; 
 char* FUNC0 (int,int /*<<< orphan*/ ,char*,int,void*) ; 
 int ib_mad_f ; 

char *FUNC1(enum MAD_FIELDS field, char *buf, int bufsz, void *val)
{
	if (field <= IB_NO_FIELD || field >= IB_FIELD_LAST_)
		return NULL;
	return FUNC0(ib_mad_f + field, 0, buf, bufsz, val);
}