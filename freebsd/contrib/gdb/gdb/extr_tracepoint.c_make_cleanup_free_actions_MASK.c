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
struct tracepoint {int dummy; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  do_free_actions_cleanup ; 
 struct cleanup* FUNC0 (int /*<<< orphan*/ ,struct tracepoint*) ; 

__attribute__((used)) static struct cleanup *
FUNC1 (struct tracepoint *t)
{
  return FUNC0 (do_free_actions_cleanup, t);
}