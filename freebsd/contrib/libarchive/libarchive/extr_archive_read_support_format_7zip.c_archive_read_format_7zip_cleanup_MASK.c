#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct archive_read {TYPE_1__* format; } ;
struct _7zip {struct _7zip* tmp_stream_buff; struct _7zip** sub_stream_buff; struct _7zip* uncompressed_buffer; struct _7zip* entry_names; struct _7zip* entries; int /*<<< orphan*/  si; } ;
struct TYPE_2__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct _7zip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_read*,struct _7zip*) ; 

__attribute__((used)) static int
FUNC3(struct archive_read *a)
{
	struct _7zip *zip;

	zip = (struct _7zip *)(a->format->data);
	FUNC1(&(zip->si));
	FUNC0(zip->entries);
	FUNC0(zip->entry_names);
	FUNC2(a, zip);
	FUNC0(zip->uncompressed_buffer);
	FUNC0(zip->sub_stream_buff[0]);
	FUNC0(zip->sub_stream_buff[1]);
	FUNC0(zip->sub_stream_buff[2]);
	FUNC0(zip->tmp_stream_buff);
	FUNC0(zip);
	(a->format->data) = NULL;
	return (ARCHIVE_OK);
}