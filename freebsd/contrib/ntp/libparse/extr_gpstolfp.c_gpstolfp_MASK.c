#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  unsigned long u_int ;
struct TYPE_3__ {scalar_t__ l_uf; scalar_t__ l_ui; } ;
typedef  TYPE_1__ l_fp ;

/* Variables and functions */
 scalar_t__ GPSORIGIN ; 
 unsigned long SECSPERDAY ; 
 unsigned long SECSPERWEEK ; 

void
FUNC0(
	 u_int weeks,
	 u_int days,
	 unsigned long  seconds,
	 l_fp * lfp
	 )
{
  lfp->l_ui = (uint32_t)(weeks * SECSPERWEEK + days * SECSPERDAY + seconds + GPSORIGIN); /* convert to NTP time */
  lfp->l_uf = 0;
}