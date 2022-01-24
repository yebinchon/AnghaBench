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
typedef  int uint64_t ;
struct TYPE_2__ {scalar_t__ dict_size; } ;
typedef  TYPE_1__ lzma_options_lzma ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 

extern uint64_t
FUNC2(const void *options)
{
	const lzma_options_lzma *const opt = options;

	// Use at least 1 MiB to keep compression ratio better.
	return FUNC1((uint64_t)(opt->dict_size) * 3, FUNC0(1) << 20);
}