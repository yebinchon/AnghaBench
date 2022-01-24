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
struct _7zip_entry {int /*<<< orphan*/  flg; int /*<<< orphan*/  mtime_ns; int /*<<< orphan*/  mtime; int /*<<< orphan*/  atime_ns; int /*<<< orphan*/  atime; int /*<<< orphan*/  ctime_ns; int /*<<< orphan*/  ctime; } ;
struct _7zip {unsigned int numFiles; struct _7zip_entry* entries; } ;
struct _7z_header_info {scalar_t__ dataIndex; } ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATIME_IS_SET ; 
 int /*<<< orphan*/  CTIME_IS_SET ; 
 int /*<<< orphan*/  MTIME_IS_SET ; 
 scalar_t__ UMAX_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (unsigned char const*) ; 
 unsigned char* FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char* FUNC4 (struct archive_read*,int) ; 
#define  kATime 130 
#define  kCTime 129 
#define  kMTime 128 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int,size_t) ; 
 scalar_t__ FUNC6 (struct archive_read*,scalar_t__*) ; 
 scalar_t__ FUNC7 (struct archive_read*,unsigned char*,size_t) ; 

__attribute__((used)) static int
FUNC8(struct archive_read *a, struct _7z_header_info *h, int type)
{
	struct _7zip *zip = (struct _7zip *)a->format->data;
	const unsigned char *p;
	struct _7zip_entry *entries = zip->entries;
	unsigned char *timeBools;
	int allAreDefined;
	unsigned i;

	timeBools = FUNC1((size_t)zip->numFiles, sizeof(*timeBools));
	if (timeBools == NULL)
		return (-1);

	/* Read allAreDefined. */
	if ((p = FUNC4(a, 1)) == NULL)
		goto failed;
	allAreDefined = *p;
	if (allAreDefined)
		FUNC5(timeBools, 1, (size_t)zip->numFiles);
	else {
		if (FUNC7(a, timeBools, (size_t)zip->numFiles) < 0)
			goto failed;
	}

	/* Read external. */
	if ((p = FUNC4(a, 1)) == NULL)
		goto failed;
	if (*p) {
		if (FUNC6(a, &(h->dataIndex)) < 0)
			goto failed;
		if (UMAX_ENTRY < h->dataIndex)
			goto failed;
	}

	for (i = 0; i < zip->numFiles; i++) {
		if (!timeBools[i])
			continue;
		if ((p = FUNC4(a, 8)) == NULL)
			goto failed;
		switch (type) {
		case kCTime:
			FUNC2(FUNC0(p),
			    &(entries[i].ctime),
			    &(entries[i].ctime_ns));
			entries[i].flg |= CTIME_IS_SET;
			break;
		case kATime:
			FUNC2(FUNC0(p),
			    &(entries[i].atime),
			    &(entries[i].atime_ns));
			entries[i].flg |= ATIME_IS_SET;
			break;
		case kMTime:
			FUNC2(FUNC0(p),
			    &(entries[i].mtime),
			    &(entries[i].mtime_ns));
			entries[i].flg |= MTIME_IS_SET;
			break;
		}
	}

	FUNC3(timeBools);
	return (0);
failed:
	FUNC3(timeBools);
	return (-1);
}