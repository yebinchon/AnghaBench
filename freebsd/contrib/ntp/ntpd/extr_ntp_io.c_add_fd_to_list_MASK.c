#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int type; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ vsock_t ;
typedef  enum desc_type { ____Placeholder_desc_type } desc_type ;
typedef  int /*<<< orphan*/  SOCKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  fd_list ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(
	SOCKET fd,
	enum desc_type type
	)
{
	vsock_t *lsock = FUNC1(sizeof(*lsock));

	lsock->fd = fd;
	lsock->type = type;

	FUNC0(fd_list, lsock, link);
	FUNC2(fd, 0);
}