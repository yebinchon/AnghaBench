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
typedef  int /*<<< orphan*/  vendor ;
typedef  char* uintmax_t ;
typedef  char* uint8_t ;
struct smp_report_manuf_info_response {int sas_11_format; char* comp_revision; int /*<<< orphan*/  vendor_specific; int /*<<< orphan*/  comp_id; int /*<<< orphan*/  comp_vendor; int /*<<< orphan*/  crc; int /*<<< orphan*/  revision; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  expander_change_count; } ;
struct sbuf {int dummy; } ;
typedef  int /*<<< orphan*/  revision ;
typedef  int /*<<< orphan*/  product ;
typedef  int /*<<< orphan*/  comp_vendor ;

/* Variables and functions */
 int SMP_RMI_SAS11_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*,...) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int) ; 

void
FUNC5(struct smp_report_manuf_info_response *response,
			   int response_len, struct sbuf *sb)
{
	char vendor[16], product[48], revision[16];
	char comp_vendor[16];

	FUNC1(sb, "Report Manufacturer Information\n");
	FUNC1(sb, "Expander Change count: %d\n",
		    FUNC2(response->expander_change_count));
	FUNC1(sb, "SAS 1.1 Format: %s\n",
		    FUNC4(response->sas_11_format & SMP_RMI_SAS11_FORMAT));
	FUNC0(vendor, response->vendor, sizeof(response->vendor),
		   sizeof(vendor));
	FUNC0(product, response->product, sizeof(response->product),
		   sizeof(product));
	FUNC0(revision, response->revision, sizeof(response->revision),
		   sizeof(revision));
	FUNC1(sb, "<%s %s %s>\n", vendor, product, revision);

	if ((response->sas_11_format & SMP_RMI_SAS11_FORMAT) == 0) {
		uint8_t *curbyte;
		int line_start, line_cursor;

		FUNC1(sb, "Vendor Specific Data:\n");

		/*
		 * Print out the bytes roughly in the style of hd(1), but
		 * without the extra ASCII decoding.  Hexadecimal line
		 * numbers on the left, and 16 bytes per line, with an
		 * extra space after the first 8 bytes.
		 *
		 * It would be nice if this sort of thing were available
		 * in a library routine.
		 */
		for (curbyte = (uint8_t *)&response->comp_vendor, line_start= 1,
		     line_cursor = 0; curbyte < (uint8_t *)&response->crc;
		     curbyte++, line_cursor++) {
			if (line_start != 0) {
				FUNC1(sb, "%08lx  ",
					    (unsigned long)(curbyte -
					    (uint8_t *)response));
				line_start = 0;
				line_cursor = 0;
			}
			FUNC1(sb, "%02x", *curbyte);

			if (line_cursor == 15) {
				FUNC1(sb, "\n");
				line_start = 1;
			} else
				FUNC1(sb, " %s", (line_cursor == 7) ?
					    " " : "");
		}
		if (line_cursor != 16)
			FUNC1(sb, "\n");
		return;
	}

	FUNC0(comp_vendor, response->comp_vendor,
		   sizeof(response->comp_vendor), sizeof(comp_vendor));
	FUNC1(sb, "Component Vendor: %s\n", comp_vendor);
	FUNC1(sb, "Component ID: %#x\n", FUNC2(response->comp_id));
	FUNC1(sb, "Component Revision: %#x\n", response->comp_revision);
	FUNC1(sb, "Vendor Specific: 0x%016jx\n",
		    (uintmax_t)FUNC3(response->vendor_specific));
}