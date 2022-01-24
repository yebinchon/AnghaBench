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
struct wpa_supplicant {int /*<<< orphan*/ ** vendor_elem; } ;
struct ieee802_11_elems {int dummy; } ;

/* Variables and functions */
 int NUM_VENDOR_ELEM_FRAMES ; 
 scalar_t__ ParseFailed ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,size_t,struct ieee802_11_elems*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (size_t) ; 
 char* FUNC5 (char*,char) ; 
 size_t FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct wpa_supplicant* FUNC8 (struct wpa_supplicant*,int) ; 
 int FUNC9 (struct wpa_supplicant*,int,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct wpa_supplicant*) ; 

__attribute__((used)) static int FUNC11(struct wpa_supplicant *wpa_s, char *cmd)
{
	char *pos = cmd;
	int frame;
	size_t len;
	u8 *buf;
	struct ieee802_11_elems elems;
	int res;

	frame = FUNC0(pos);
	if (frame < 0 || frame >= NUM_VENDOR_ELEM_FRAMES)
		return -1;
	wpa_s = FUNC8(wpa_s, frame);

	pos = FUNC5(pos, ' ');
	if (pos == NULL)
		return -1;
	pos++;

	if (*pos == '*') {
		FUNC7(wpa_s->vendor_elem[frame]);
		wpa_s->vendor_elem[frame] = NULL;
		FUNC10(wpa_s);
		return 0;
	}

	if (wpa_s->vendor_elem[frame] == NULL)
		return -1;

	len = FUNC6(pos);
	if (len == 0)
		return 0;
	if (len & 1)
		return -1;
	len /= 2;

	buf = FUNC4(len);
	if (buf == NULL)
		return -1;

	if (FUNC1(pos, buf, len) < 0) {
		FUNC3(buf);
		return -1;
	}

	if (FUNC2(buf, len, &elems, 0) == ParseFailed) {
		FUNC3(buf);
		return -1;
	}

	res = FUNC9(wpa_s, frame, buf, len);
	FUNC3(buf);
	return res;
}