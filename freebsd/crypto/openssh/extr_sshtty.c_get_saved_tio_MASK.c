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
struct termios {int dummy; } ;

/* Variables and functions */
 scalar_t__ _in_raw_mode ; 
 struct termios _saved_tio ; 

struct termios *
FUNC0(void)
{
	return _in_raw_mode ? &_saved_tio : NULL;
}