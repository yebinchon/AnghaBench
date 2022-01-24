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
struct zip_entry {int /*<<< orphan*/  format_name; struct zip_entry* v_data; struct zip_entry* erd; struct zip_entry* iv; int /*<<< orphan*/  hctx; scalar_t__ hctx_valid; int /*<<< orphan*/  cctx; scalar_t__ cctx_valid; struct zip_entry* decrypted_buffer; int /*<<< orphan*/  rsrcname; struct zip_entry* next; struct zip_entry* zip_entries; int /*<<< orphan*/  ppmd8; scalar_t__ ppmd8_valid; struct zip_entry* uncompressed_buffer; int /*<<< orphan*/  bzstream; scalar_t__ bzstream_valid; int /*<<< orphan*/  zipx_lzma_stream; scalar_t__ zipx_lzma_valid; int /*<<< orphan*/  stream; scalar_t__ stream_valid; } ;
struct zip {int /*<<< orphan*/  format_name; struct zip* v_data; struct zip* erd; struct zip* iv; int /*<<< orphan*/  hctx; scalar_t__ hctx_valid; int /*<<< orphan*/  cctx; scalar_t__ cctx_valid; struct zip* decrypted_buffer; int /*<<< orphan*/  rsrcname; struct zip* next; struct zip* zip_entries; int /*<<< orphan*/  ppmd8; scalar_t__ ppmd8_valid; struct zip* uncompressed_buffer; int /*<<< orphan*/  bzstream; scalar_t__ bzstream_valid; int /*<<< orphan*/  zipx_lzma_stream; scalar_t__ zipx_lzma_valid; int /*<<< orphan*/  stream; scalar_t__ stream_valid; } ;
struct archive_read {TYPE_1__* format; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* Ppmd8_Free ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__ __archive_ppmd8_functions ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct zip_entry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct archive_read *a)
{
	struct zip *zip;
	struct zip_entry *zip_entry, *next_zip_entry;

	zip = (struct zip *)(a->format->data);

#ifdef HAVE_ZLIB_H
	if (zip->stream_valid)
		inflateEnd(&zip->stream);
#endif

#if HAVE_LZMA_H && HAVE_LIBLZMA
    if (zip->zipx_lzma_valid) {
		lzma_end(&zip->zipx_lzma_stream);
	}
#endif

#ifdef HAVE_BZLIB_H
	if (zip->bzstream_valid) {
		BZ2_bzDecompressEnd(&zip->bzstream);
	}
#endif

	FUNC4(zip->uncompressed_buffer);

	if (zip->ppmd8_valid)
		__archive_ppmd8_functions.Ppmd8_Free(&zip->ppmd8);

	if (zip->zip_entries) {
		zip_entry = zip->zip_entries;
		while (zip_entry != NULL) {
			next_zip_entry = zip_entry->next;
			FUNC3(&zip_entry->rsrcname);
			FUNC4(zip_entry);
			zip_entry = next_zip_entry;
		}
	}
	FUNC4(zip->decrypted_buffer);
	if (zip->cctx_valid)
		FUNC1(&zip->cctx);
	if (zip->hctx_valid)
		FUNC2(&zip->hctx);
	FUNC4(zip->iv);
	FUNC4(zip->erd);
	FUNC4(zip->v_data);
	FUNC3(&zip->format_name);
	FUNC4(zip);
	(a->format->data) = NULL;
	return (ARCHIVE_OK);
}