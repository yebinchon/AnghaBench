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
struct fd_info {int state; } ;
typedef  enum fd_fork_state { ____Placeholder_fd_fork_state } fd_fork_state ;

/* Variables and functions */
 int fd_ready ; 
 int /*<<< orphan*/  idm ; 
 struct fd_info* FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline enum fd_fork_state FUNC1(int index)
{
	struct fd_info *fdi;

	fdi = FUNC0(&idm, index);
	return fdi ? fdi->state : fd_ready;
}