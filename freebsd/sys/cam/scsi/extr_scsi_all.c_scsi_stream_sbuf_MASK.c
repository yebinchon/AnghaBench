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
typedef  int uint8_t ;
struct sbuf {int dummy; } ;

/* Variables and functions */
 int SSD_DESC_STREAM_EOM ; 
 int SSD_DESC_STREAM_FM ; 
 int SSD_DESC_STREAM_ILI ; 
 int /*<<< orphan*/  FUNC0 (struct sbuf*,char*,...) ; 

void
FUNC1(struct sbuf *sb, uint8_t stream_bits)
{
	int need_comma;

	need_comma = 0;
	/*
	 * XXX KDM this needs more descriptive decoding.
	 */
	FUNC0(sb, "Stream Command Sense Data: ");
	if (stream_bits & SSD_DESC_STREAM_FM) {
		FUNC0(sb, "Filemark");
		need_comma = 1;
	}

	if (stream_bits & SSD_DESC_STREAM_EOM) {
		FUNC0(sb, "%sEOM", (need_comma) ? "," : "");
		need_comma = 1;
	}

	if (stream_bits & SSD_DESC_STREAM_ILI)
		FUNC0(sb, "%sILI", (need_comma) ? "," : "");
}