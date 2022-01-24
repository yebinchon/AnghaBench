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
typedef  int /*<<< orphan*/  gss_OID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,size_t*,size_t*,int /*<<< orphan*/  const) ; 

void
FUNC1 (size_t data_len,
			  size_t *len,
			  size_t *total_len,
			  const gss_OID mech)
{
    FUNC0(data_len + 2, len, total_len, mech);
}