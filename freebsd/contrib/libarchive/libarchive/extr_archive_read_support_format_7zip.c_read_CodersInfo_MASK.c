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
struct archive_read {int /*<<< orphan*/  archive; } ;
struct _7z_folder {unsigned int* unPackSize; unsigned int numOutStreams; int /*<<< orphan*/  digest; int /*<<< orphan*/  digest_defined; } ;
struct _7z_digests {unsigned int numFolders; unsigned int dataStreamIndex; int /*<<< orphan*/ * digests; struct _7z_folder* folders; int /*<<< orphan*/ * defineds; } ;
struct _7z_coders_info {unsigned int numFolders; unsigned int dataStreamIndex; int /*<<< orphan*/ * digests; struct _7z_folder* folders; int /*<<< orphan*/ * defineds; } ;
typedef  int /*<<< orphan*/  digest ;

/* Variables and functions */
 unsigned int UMAX_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 void* FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (struct _7z_digests*) ; 
 unsigned char* FUNC3 (struct archive_read*,int) ; 
 unsigned char const kCRC ; 
 unsigned char const kCodersUnPackSize ; 
 unsigned char const kEnd ; 
 unsigned char const kFolder ; 
 int /*<<< orphan*/  FUNC4 (struct _7z_digests*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct archive_read*,unsigned int*) ; 
 scalar_t__ FUNC6 (struct archive_read*,struct _7z_digests*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_read*,struct _7z_folder*) ; 

__attribute__((used)) static int
FUNC8(struct archive_read *a, struct _7z_coders_info *ci)
{
	const unsigned char *p;
	struct _7z_digests digest;
	unsigned i;

	FUNC4(ci, 0, sizeof(*ci));
	FUNC4(&digest, 0, sizeof(digest));

	if ((p = FUNC3(a, 1)) == NULL)
		goto failed;
	if (*p != kFolder)
		goto failed;

	/*
	 * Read NumFolders.
	 */
	if (FUNC5(a, &(ci->numFolders)) < 0)
		goto failed;
	if (UMAX_ENTRY < ci->numFolders)
		return (-1);

	/*
	 * Read External.
	 */
	if ((p = FUNC3(a, 1)) == NULL)
		goto failed;
	switch (*p) {
	case 0:
		ci->folders =
			FUNC1((size_t)ci->numFolders, sizeof(*ci->folders));
		if (ci->folders == NULL)
			return (-1);
		for (i = 0; i < ci->numFolders; i++) {
			if (FUNC7(a, &(ci->folders[i])) < 0)
				goto failed;
		}
		break;
	case 1:
		if (FUNC5(a, &(ci->dataStreamIndex)) < 0)
			return (-1);
		if (UMAX_ENTRY < ci->dataStreamIndex)
			return (-1);
		if (ci->numFolders > 0) {
			FUNC0(&a->archive, -1,
			    "Malformed 7-Zip archive");
			goto failed;
		}
		break;
	default:
		FUNC0(&a->archive, -1,
		    "Malformed 7-Zip archive");
		goto failed;
	}

	if ((p = FUNC3(a, 1)) == NULL)
		goto failed;
	if (*p != kCodersUnPackSize)
		goto failed;

	for (i = 0; i < ci->numFolders; i++) {
		struct _7z_folder *folder = &(ci->folders[i]);
		unsigned j;

		folder->unPackSize =
		    FUNC1((size_t)folder->numOutStreams, sizeof(*folder->unPackSize));
		if (folder->unPackSize == NULL)
			goto failed;
		for (j = 0; j < folder->numOutStreams; j++) {
			if (FUNC5(a, &(folder->unPackSize[j])) < 0)
				goto failed;
		}
	}

	/*
	 * Read CRCs.
	 */
	if ((p = FUNC3(a, 1)) == NULL)
		goto failed;
	if (*p == kEnd)
		return (0);
	if (*p != kCRC)
		goto failed;
	if (FUNC6(a, &digest, (size_t)ci->numFolders) < 0)
		goto failed;
	for (i = 0; i < ci->numFolders; i++) {
		ci->folders[i].digest_defined = digest.defineds[i];
		ci->folders[i].digest = digest.digests[i];
	}

	/*
	 *  Must be kEnd.
	 */
	if ((p = FUNC3(a, 1)) == NULL)
		goto failed;
	if (*p != kEnd)
		goto failed;
	FUNC2(&digest);
	return (0);
failed:
	FUNC2(&digest);
	return (-1);
}