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
struct read_fd_data {struct read_fd_data* buffer; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct read_fd_data*) ; 

__attribute__((used)) static int
FUNC1(struct archive *a, void *client_data)
{
	struct read_fd_data *mine = (struct read_fd_data *)client_data;

	(void)a; /* UNUSED */
	FUNC0(mine->buffer);
	FUNC0(mine);
	return (ARCHIVE_OK);
}