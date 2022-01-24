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
struct hast_resource {char* hr_name; scalar_t__ hr_local_mediasize; size_t hr_localpath; scalar_t__ hr_local_sectorsize; scalar_t__ hr_localfd; scalar_t__ hr_localoff; scalar_t__ hr_keepdirty; scalar_t__ hr_extentsize; scalar_t__ hr_datasize; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ intmax_t ;

/* Variables and functions */
 int EX_DATAERR ; 
 int EX_IOERR ; 
 int EX_NOINPUT ; 
 int EX_TEMPFAIL ; 
 scalar_t__ HAST_EXTENTSIZE ; 
 scalar_t__ HAST_KEEPDIRTY ; 
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ METADATA_SIZE ; 
 size_t FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 unsigned char* FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int FUNC4 (struct hast_resource*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int FUNC9 (struct hast_resource*,int) ; 
 scalar_t__ FUNC10 (scalar_t__,unsigned char*,size_t,scalar_t__) ; 

__attribute__((used)) static int
FUNC11(struct hast_resource *res, intmax_t mediasize, intmax_t extentsize,
    intmax_t keepdirty)
{
	unsigned char *buf;
	size_t mapsize;
	int ec;

	ec = 0;
	FUNC7("[%s] ", res->hr_name);

	if (FUNC9(res, true) == -1) {
		ec = EX_NOINPUT;
		goto end;
	}
	if (mediasize == 0)
		mediasize = res->hr_local_mediasize;
	else if (mediasize > res->hr_local_mediasize) {
		FUNC6("Provided mediasize is larger than provider %s size.",
		    res->hr_localpath);
		ec = EX_DATAERR;
		goto end;
	}
	if (!FUNC8(res->hr_local_sectorsize)) {
		FUNC6("Sector size of provider %s is not power of 2 (%u).",
		    res->hr_localpath, res->hr_local_sectorsize);
		ec = EX_DATAERR;
		goto end;
	}
	if (extentsize == 0)
		extentsize = HAST_EXTENTSIZE;
	if (extentsize < res->hr_local_sectorsize) {
		FUNC6("Extent size (%jd) is less than sector size (%u).",
		    (intmax_t)extentsize, res->hr_local_sectorsize);
		ec = EX_DATAERR;
		goto end;
	}
	if ((extentsize % res->hr_local_sectorsize) != 0) {
		FUNC6("Extent size (%jd) is not multiple of sector size (%u).",
		    (intmax_t)extentsize, res->hr_local_sectorsize);
		ec = EX_DATAERR;
		goto end;
	}
	mapsize = FUNC0(mediasize - METADATA_SIZE,
	    extentsize, res->hr_local_sectorsize);
	if (keepdirty == 0)
		keepdirty = HAST_KEEPDIRTY;
	res->hr_datasize = mediasize - METADATA_SIZE - mapsize;
	res->hr_extentsize = extentsize;
	res->hr_keepdirty = keepdirty;

	res->hr_localoff = METADATA_SIZE + mapsize;

	if (FUNC4(res) == -1) {
		ec = EX_IOERR;
		goto end;
	}
	buf = FUNC1(1, mapsize);
	if (buf == NULL) {
		FUNC6("Unable to allocate %zu bytes of memory for initial bitmap.",
		    mapsize);
		ec = EX_TEMPFAIL;
		goto end;
	}
	if (FUNC10(res->hr_localfd, buf, mapsize, METADATA_SIZE) !=
	    (ssize_t)mapsize) {
		FUNC5(LOG_ERR, "Unable to store initial bitmap on %s",
		    res->hr_localpath);
		FUNC3(buf);
		ec = EX_IOERR;
		goto end;
	}
	FUNC3(buf);
end:
	if (res->hr_localfd >= 0)
		FUNC2(res->hr_localfd);
	FUNC7("%s", "");
	return (ec);
}