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
struct s390_stub_unwind_cache {int /*<<< orphan*/  frame_base; } ;
struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;

/* Variables and functions */
 struct frame_id FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct frame_info*) ; 
 struct s390_stub_unwind_cache* FUNC2 (struct frame_info*,void**) ; 

__attribute__((used)) static void
FUNC3 (struct frame_info *next_frame,
			 void **this_prologue_cache,
			 struct frame_id *this_id)
{
  struct s390_stub_unwind_cache *info
    = FUNC2 (next_frame, this_prologue_cache);
  *this_id = FUNC0 (info->frame_base, FUNC1 (next_frame));
}