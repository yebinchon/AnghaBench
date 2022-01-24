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
struct remote_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  current_gdbarch ; 
 struct remote_state* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  remote_gdbarch_data_handle ; 

__attribute__((used)) static struct remote_state *
FUNC1 (void)
{
  return FUNC0 (current_gdbarch, remote_gdbarch_data_handle);
}