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
struct write_file_data {scalar_t__ fd; int /*<<< orphan*/  filename; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct write_file_data*) ; 

__attribute__((used)) static int
FUNC3(struct archive *a, void *client_data)
{
	struct write_file_data	*mine = (struct write_file_data *)client_data;

	(void)a; /* UNUSED */

	if (mine->fd >= 0)
		FUNC1(mine->fd);

	FUNC0(&mine->filename);
	FUNC2(mine);
	return (ARCHIVE_OK);
}