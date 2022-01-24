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
typedef  scalar_t__ uint64_t ;
struct pt_mapped_section {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pt_mapped_section const*) ; 
 scalar_t__ FUNC1 (struct pt_mapped_section const*) ; 

__attribute__((used)) static inline int FUNC2(const struct pt_mapped_section *msec,
				       uint64_t ip)
{
	uint64_t begin, end;

	begin = FUNC0(msec);
	end = FUNC1(msec);

	return (begin <= ip && ip < end);
}