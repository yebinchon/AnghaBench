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
struct sparc_frame_cache {int /*<<< orphan*/  pc; int /*<<< orphan*/  base; } ;
struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;

/* Variables and functions */
 struct frame_id FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sparc_frame_cache* FUNC1 (struct frame_info*,void**) ; 

__attribute__((used)) static void
FUNC2 (struct frame_info *next_frame,
				     void **this_cache,
				     struct frame_id *this_id)
{
  struct sparc_frame_cache *cache =
    FUNC1 (next_frame, this_cache);

  (*this_id) = FUNC0 (cache->base, cache->pc);
}