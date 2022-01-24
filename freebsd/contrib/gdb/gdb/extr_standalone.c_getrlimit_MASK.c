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
struct rlimit {scalar_t__ rlim_cur; } ;

/* Variables and functions */
 scalar_t__ memory_limit ; 
 scalar_t__ next_free ; 

FUNC0 (struct rlimit *addr)
{
  addr->rlim_cur = memory_limit - next_free;
}