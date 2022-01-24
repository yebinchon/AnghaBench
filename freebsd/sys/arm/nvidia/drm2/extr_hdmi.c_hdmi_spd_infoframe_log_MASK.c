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
typedef  int /*<<< orphan*/  uint8_t ;
struct hdmi_spd_infoframe {int /*<<< orphan*/  sdi; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; } ;
struct hdmi_any_infoframe {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hdmi_any_infoframe*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct hdmi_spd_infoframe *frame)
{
	uint8_t buf[17];

	FUNC0((struct hdmi_any_infoframe *)frame);

	FUNC3(buf, 0, sizeof(buf));

	FUNC4(buf, frame->vendor, 8);
	FUNC1("    vendor: %s\n", buf);
	FUNC4(buf, frame->product, 16);
	FUNC1("    product: %s\n", buf);
	FUNC1("    source device information: %s (0x%x)\n",
		FUNC2(frame->sdi), frame->sdi);
}