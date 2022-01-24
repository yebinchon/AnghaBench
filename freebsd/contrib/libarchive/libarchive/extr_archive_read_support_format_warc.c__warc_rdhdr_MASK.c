#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int warc_type_t ;
struct TYPE_8__ {unsigned int len; char* str; } ;
typedef  TYPE_3__ warc_string_t ;
typedef  scalar_t__ time_t ;
struct TYPE_7__ {unsigned int len; char* str; } ;
struct warc_s {unsigned int pver; unsigned int cntoff; TYPE_2__ pool; scalar_t__ cntlen; int /*<<< orphan*/  sver; } ;
struct TYPE_9__ {int /*<<< orphan*/  archive_format; } ;
struct archive_read {TYPE_4__ archive; TYPE_1__* format; } ;
struct archive_entry {int dummy; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_6__ {struct warc_s* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AE_IFREG ; 
 int ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FATAL ; 
 int /*<<< orphan*/  ARCHIVE_FORMAT_WARC ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  HDR_PROBE_LEN ; 
#define  WT_RSP 129 
#define  WT_RSRC 128 
 char* FUNC0 (struct archive_read*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_read*,int) ; 
 char* FUNC2 (char const*,scalar_t__) ; 
 scalar_t__ FUNC3 (char const*,int) ; 
 scalar_t__ FUNC4 (char const*,int) ; 
 scalar_t__ FUNC5 (char const*,int) ; 
 int FUNC6 (char const*,int) ; 
 TYPE_3__ FUNC7 (char const*,int) ; 
 unsigned int FUNC8 (char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_read*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_entry*,scalar_t__,long) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct archive_entry*,scalar_t__,long) ; 
 int /*<<< orphan*/  FUNC14 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct archive_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,unsigned int) ; 
 char* FUNC19 (char*,unsigned int) ; 

__attribute__((used)) static int
FUNC20(struct archive_read *a, struct archive_entry *entry)
{
#define HDR_PROBE_LEN		(12U)
	struct warc_s *w = a->format->data;
	unsigned int ver;
	const char *buf;
	ssize_t nrd;
	const char *eoh;
	/* for the file name, saves some strndup()'ing */
	warc_string_t fnam;
	/* warc record type, not that we really use it a lot */
	warc_type_t ftyp;
	/* content-length+error monad */
	ssize_t cntlen;
	/* record time is the WARC-Date time we reinterpret it as ctime */
	time_t rtime;
	/* mtime is the Last-Modified time which will be the entry's mtime */
	time_t mtime;

start_over:
	/* just use read_ahead() they keep track of unconsumed
	 * bits and bobs for us; no need to put an extra shift in
	 * and reproduce that functionality here */
	buf = FUNC0(a, HDR_PROBE_LEN, &nrd);

	if (nrd < 0) {
		/* no good */
		FUNC16(
			&a->archive, ARCHIVE_ERRNO_MISC,
			"Bad record header");
		return (ARCHIVE_FATAL);
	} else if (buf == NULL) {
		/* there should be room for at least WARC/bla\r\n
		 * must be EOF therefore */
		return (ARCHIVE_EOF);
	}
 	/* looks good so far, try and find the end of the header now */
	eoh = FUNC2(buf, nrd);
	if (eoh == NULL) {
		/* still no good, the header end might be beyond the
		 * probe we've requested, but then again who'd cram
		 * so much stuff into the header *and* be 28500-compliant */
		FUNC16(
			&a->archive, ARCHIVE_ERRNO_MISC,
			"Bad record header");
		return (ARCHIVE_FATAL);
	}
	ver = FUNC8(buf, eoh - buf);
	/* we currently support WARC 0.12 to 1.0 */
	if (ver == 0U) {
		FUNC16(
			&a->archive, ARCHIVE_ERRNO_MISC,
			"Invalid record version");
		return (ARCHIVE_FATAL);
	} else if (ver < 1200U || ver > 10000U) {
		FUNC16(
			&a->archive, ARCHIVE_ERRNO_MISC,
			"Unsupported record version: %u.%u",
			ver / 10000, (ver % 10000) / 100);
		return (ARCHIVE_FATAL);
	}
	cntlen = FUNC3(buf, eoh - buf);
	if (cntlen < 0) {
		/* nightmare!  the specs say content-length is mandatory
		 * so I don't feel overly bad stopping the reader here */
		FUNC16(
			&a->archive, EINVAL,
			"Bad content length");
		return (ARCHIVE_FATAL);
	}
	rtime = FUNC5(buf, eoh - buf);
	if (rtime == (time_t)-1) {
		/* record time is mandatory as per WARC/1.0,
		 * so just barf here, fast and loud */
		FUNC16(
			&a->archive, EINVAL,
			"Bad record time");
		return (ARCHIVE_FATAL);
	}

	/* let the world know we're a WARC archive */
	a->archive.archive_format = ARCHIVE_FORMAT_WARC;
	if (ver != w->pver) {
		/* stringify this entry's version */
		FUNC17(&w->sver,
			"WARC/%u.%u", ver / 10000, (ver % 10000) / 100);
		/* remember the version */
		w->pver = ver;
	}
	/* start off with the type */
	ftyp = FUNC6(buf, eoh - buf);
	/* and let future calls know about the content */
	w->cntlen = cntlen;
	w->cntoff = 0U;
	mtime = 0;/* Avoid compiling error on some platform. */

	switch (ftyp) {
	case WT_RSRC:
	case WT_RSP:
		/* only try and read the filename in the cases that are
		 * guaranteed to have one */
		fnam = FUNC7(buf, eoh - buf);
		/* check the last character in the URI to avoid creating
		 * directory endpoints as files, see Todo above */
		if (fnam.len == 0 || fnam.str[fnam.len - 1] == '/') {
			/* break here for now */
			fnam.len = 0U;
			fnam.str = NULL;
			break;
		}
		/* bang to our string pool, so we save a
		 * malloc()+free() roundtrip */
		if (fnam.len + 1U > w->pool.len) {
			w->pool.len = ((fnam.len + 64U) / 64U) * 64U;
			w->pool.str = FUNC19(w->pool.str, w->pool.len);
		}
		FUNC18(w->pool.str, fnam.str, fnam.len);
		w->pool.str[fnam.len] = '\0';
		/* let no one else know about the pool, it's a secret, shhh */
		fnam.str = w->pool.str;

		/* snarf mtime or deduce from rtime
		 * this is a custom header added by our writer, it's quite
		 * hard to believe anyone else would go through with it
		 * (apart from being part of some http responses of course) */
		if ((mtime = FUNC4(buf, eoh - buf)) == (time_t)-1) {
			mtime = rtime;
		}
		break;
	default:
		fnam.len = 0U;
		fnam.str = NULL;
		break;
	}

	/* now eat some of those delicious buffer bits */
	FUNC1(a, eoh - buf);

	switch (ftyp) {
	case WT_RSRC:
	case WT_RSP:
		if (fnam.len > 0U) {
			/* populate entry object */
			FUNC12(entry, AE_IFREG);
			FUNC10(entry, fnam.str);
			FUNC15(entry, cntlen);
			FUNC14(entry, 0644);
			/* rtime is the new ctime, mtime stays mtime */
			FUNC11(entry, rtime, 0L);
			FUNC13(entry, mtime, 0L);
			break;
		}
		/* FALLTHROUGH */
	default:
		/* consume the content and start over */
		FUNC9(a);
		goto start_over;
	}
	return (ARCHIVE_OK);
}