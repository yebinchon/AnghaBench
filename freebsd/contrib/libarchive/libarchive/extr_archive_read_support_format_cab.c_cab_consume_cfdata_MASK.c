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
typedef  scalar_t__ uint16_t ;
struct cfdata {scalar_t__ compressed_size; scalar_t__ uncompressed_bytes_remaining; scalar_t__ uncompressed_avail; scalar_t__ uncompressed_size; int /*<<< orphan*/  read_offset; scalar_t__ compressed_bytes_remaining; } ;
struct cab {TYPE_2__* entry_cffile; struct cfdata* entry_cfdata; int /*<<< orphan*/  cab_offset; } ;
struct archive_read {int /*<<< orphan*/  archive; TYPE_1__* format; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_4__ {int folder; } ;
struct TYPE_3__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 scalar_t__ ARCHIVE_FATAL ; 
 int /*<<< orphan*/  FUNC0 (struct archive_read*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct archive_read*,scalar_t__) ; 
 int FUNC3 (struct archive_read*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_read*,scalar_t__*) ; 
#define  iFoldCONTINUED_FROM_PREV 130 
#define  iFoldCONTINUED_PREV_AND_NEXT 129 
#define  iFoldCONTINUED_TO_NEXT 128 

__attribute__((used)) static int64_t
FUNC5(struct archive_read *a, int64_t consumed_bytes)
{
	struct cab *cab = (struct cab *)(a->format->data);
	struct cfdata *cfdata;
	int64_t cbytes, rbytes;
	int err;

	rbytes = FUNC2(a, consumed_bytes);
	if (rbytes < 0)
		return (ARCHIVE_FATAL);

	cfdata = cab->entry_cfdata;
	while (rbytes > 0) {
		ssize_t avail;

		if (cfdata->compressed_size == 0) {
			FUNC1(&a->archive,
			    ARCHIVE_ERRNO_FILE_FORMAT,
			    "Invalid CFDATA");
			return (ARCHIVE_FATAL);
		}
		cbytes = cfdata->uncompressed_bytes_remaining;
		if (cbytes > rbytes)
			cbytes = rbytes;
		rbytes -= cbytes;

		if (cfdata->uncompressed_avail == 0 &&
		   (cab->entry_cffile->folder == iFoldCONTINUED_PREV_AND_NEXT ||
		    cab->entry_cffile->folder == iFoldCONTINUED_FROM_PREV)) {
			/* We have not read any data yet. */
			if (cbytes == cfdata->uncompressed_bytes_remaining) {
				/* Skip whole current CFDATA. */
				FUNC0(a,
				    cfdata->compressed_size);
				cab->cab_offset += cfdata->compressed_size;
				cfdata->compressed_bytes_remaining = 0;
				cfdata->uncompressed_bytes_remaining = 0;
				err = FUNC3(a);
				if (err < 0)
					return (err);
				cfdata = cab->entry_cfdata;
				if (cfdata->uncompressed_size == 0) {
					switch (cab->entry_cffile->folder) {
					case iFoldCONTINUED_PREV_AND_NEXT:
					case iFoldCONTINUED_TO_NEXT:
					case iFoldCONTINUED_FROM_PREV:
						rbytes = 0;
						break;
					default:
						break;
					}
				}
				continue;
			}
			cfdata->read_offset += (uint16_t)cbytes;
			cfdata->uncompressed_bytes_remaining -= (uint16_t)cbytes;
			break;
		} else if (cbytes == 0) {
			err = FUNC3(a);
			if (err < 0)
				return (err);
			cfdata = cab->entry_cfdata;
			if (cfdata->uncompressed_size == 0) {
				switch (cab->entry_cffile->folder) {
				case iFoldCONTINUED_PREV_AND_NEXT:
				case iFoldCONTINUED_TO_NEXT:
				case iFoldCONTINUED_FROM_PREV:
					return (ARCHIVE_FATAL);
				default:
					break;
				}
			}
			continue;
		}
		while (cbytes > 0) {
			(void)FUNC4(a, &avail);
			if (avail <= 0)
				return (ARCHIVE_FATAL);
			if (avail > cbytes)
				avail = (ssize_t)cbytes;
			if (FUNC2(a, avail) < 0)
				return (ARCHIVE_FATAL);
			cbytes -= avail;
		}
	}
	return (consumed_bytes);
}