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
struct archive {int dummy; } ;
typedef  int /*<<< orphan*/  archive_read_callback ;
typedef  int /*<<< orphan*/  archive_open_callback ;
typedef  int /*<<< orphan*/  archive_close_callback ;

/* Variables and functions */
 int FUNC0 (struct archive*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*,int /*<<< orphan*/ *) ; 

int
FUNC5(struct archive *a, void *client_data,
    archive_open_callback *client_opener, archive_read_callback *client_reader,
    archive_close_callback *client_closer)
{
	/* Old archive_read_open() is just a thin shell around
	 * archive_read_open1. */
	FUNC3(a, client_opener);
	FUNC4(a, client_reader);
	FUNC2(a, client_closer);
	FUNC1(a, client_data);
	return FUNC0(a);
}