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
struct _citrus_memory_stream {scalar_t__ ms_pos; int /*<<< orphan*/  ms_region; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline int
FUNC1(struct _citrus_memory_stream *ms)
{

	return (ms->ms_pos >= FUNC0(&ms->ms_region));
}