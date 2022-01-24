#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cfheader {int folder_count; int file_count; struct cab* file_array; struct cab* folder_array; } ;
struct TYPE_3__ {struct cab* memimage; } ;
struct cab {struct cab* uncompressed_buffer; int /*<<< orphan*/  ws; int /*<<< orphan*/  xstrm; int /*<<< orphan*/  stream; scalar_t__ stream_valid; int /*<<< orphan*/  pathname; struct cfheader cfheader; TYPE_1__ cfdata; } ;
struct archive_read {TYPE_2__* format; } ;
struct TYPE_4__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cab*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct archive_read *a)
{
	struct cab *cab = (struct cab *)(a->format->data);
	struct cfheader *hd = &cab->cfheader;
	int i;

	if (hd->folder_array != NULL) {
		for (i = 0; i < hd->folder_count; i++)
			FUNC2(hd->folder_array[i].cfdata.memimage);
		FUNC2(hd->folder_array);
	}
	if (hd->file_array != NULL) {
		for (i = 0; i < cab->cfheader.file_count; i++)
			FUNC0(&(hd->file_array[i].pathname));
		FUNC2(hd->file_array);
	}
#ifdef HAVE_ZLIB_H
	if (cab->stream_valid)
		inflateEnd(&cab->stream);
#endif
	FUNC4(&cab->xstrm);
	FUNC1(&cab->ws);
	FUNC2(cab->uncompressed_buffer);
	FUNC2(cab);
	(a->format->data) = NULL;
	return (ARCHIVE_OK);
}