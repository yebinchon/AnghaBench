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
struct httpread {scalar_t__ content_length; scalar_t__ max_bytes; int got_content_length; int chunked; scalar_t__ in_chunk_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(
	struct httpread *h,
	char *hbp       /* pointer to current line in header buffer */
	)
{
	if (FUNC3(hbp, "CONTENT-LENGTH:")) {
		while (FUNC2(*hbp))
			hbp++;
		while (*hbp == ' ' || *hbp == '\t')
			hbp++;
		if (!FUNC1(*hbp))
			return -1;
		h->content_length = FUNC0(hbp);
		if (h->content_length < 0 || h->content_length > h->max_bytes) {
			FUNC4(MSG_DEBUG,
				   "httpread: Unacceptable Content-Length %d",
				   h->content_length);
			return -1;
		}
		h->got_content_length = 1;
		return 0;
	}
	if (FUNC3(hbp, "TRANSFER_ENCODING:") ||
	    FUNC3(hbp, "TRANSFER-ENCODING:")) {
		while (FUNC2(*hbp))
			hbp++;
		while (*hbp == ' ' || *hbp == '\t')
			hbp++;
		/* There should (?) be no encodings of interest
		 * other than chunked...
		 */
		if (FUNC3(hbp, "CHUNKED")) {
			h->chunked = 1;
			h->in_chunk_data = 0;
			/* ignore possible ;<parameters> */
		}
		return 0;
	}
	/* skip anything we don't know, which is a lot */
	return 0;
}