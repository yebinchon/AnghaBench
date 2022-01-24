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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct wpa_config {struct wpabuf* ap_vendor_elements; } ;
struct global_parse_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 struct wpabuf* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC5 (struct wpabuf*,int) ; 

__attribute__((used)) static int FUNC6(
	const struct global_parse_data *data,
	struct wpa_config *config, int line, const char *pos)
{
	struct wpabuf *tmp;
	int len = FUNC1(pos) / 2;
	u8 *p;

	if (!len) {
		FUNC2(MSG_ERROR, "Line %d: invalid ap_vendor_elements",
			   line);
		return -1;
	}

	tmp = FUNC3(len);
	if (tmp) {
		p = FUNC5(tmp, len);

		if (FUNC0(pos, p, len)) {
			FUNC2(MSG_ERROR, "Line %d: invalid "
				   "ap_vendor_elements", line);
			FUNC4(tmp);
			return -1;
		}

		FUNC4(config->ap_vendor_elements);
		config->ap_vendor_elements = tmp;
	} else {
		FUNC2(MSG_ERROR, "Cannot allocate memory for "
			   "ap_vendor_elements");
		return -1;
	}

	return 0;
}