#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int (* win_cesa_attr ) (int) ;} ;

/* Variables and functions */
 TYPE_1__* soc_decode_win_spec ; 
 int FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(int eng_sel)
{

	if (soc_decode_win_spec->win_cesa_attr != NULL)
		return (soc_decode_win_spec->win_cesa_attr(eng_sel));

	return (-1);
}