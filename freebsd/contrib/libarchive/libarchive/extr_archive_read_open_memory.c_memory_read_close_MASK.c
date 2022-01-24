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
struct read_memory_data {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct read_memory_data*) ; 

__attribute__((used)) static int
FUNC1(struct archive *a, void *client_data)
{
	struct read_memory_data *mine = (struct read_memory_data *)client_data;
	(void)a; /* UNUSED */
	FUNC0(mine);
	return (ARCHIVE_OK);
}