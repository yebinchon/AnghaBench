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
struct wpabuf {int dummy; } ;
struct wpa_supplicant {struct wpabuf** vendor_elem; } ;
struct ieee802_11_elems {int dummy; } ;

/* Variables and functions */
 int NUM_VENDOR_ELEM_FRAMES ; 
 scalar_t__ ParseFailed ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,size_t,struct ieee802_11_elems*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char) ; 
 size_t FUNC4 (char*) ; 
 struct wpabuf* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,struct wpabuf*) ; 
 scalar_t__ FUNC10 (struct wpabuf**,size_t) ; 
 struct wpa_supplicant* FUNC11 (struct wpa_supplicant*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct wpa_supplicant*) ; 

__attribute__((used)) static int FUNC13(struct wpa_supplicant *wpa_s, char *cmd)
{
	char *pos = cmd;
	int frame;
	size_t len;
	struct wpabuf *buf;
	struct ieee802_11_elems elems;

	frame = FUNC0(pos);
	if (frame < 0 || frame >= NUM_VENDOR_ELEM_FRAMES)
		return -1;
	wpa_s = FUNC11(wpa_s, frame);

	pos = FUNC3(pos, ' ');
	if (pos == NULL)
		return -1;
	pos++;

	len = FUNC4(pos);
	if (len == 0)
		return 0;
	if (len & 1)
		return -1;
	len /= 2;

	buf = FUNC5(len);
	if (buf == NULL)
		return -1;

	if (FUNC1(pos, FUNC8(buf, len), len) < 0) {
		FUNC6(buf);
		return -1;
	}

	if (FUNC2(FUNC7(buf), len, &elems, 0) ==
	    ParseFailed) {
		FUNC6(buf);
		return -1;
	}

	if (wpa_s->vendor_elem[frame] == NULL) {
		wpa_s->vendor_elem[frame] = buf;
		FUNC12(wpa_s);
		return 0;
	}

	if (FUNC10(&wpa_s->vendor_elem[frame], len) < 0) {
		FUNC6(buf);
		return -1;
	}

	FUNC9(wpa_s->vendor_elem[frame], buf);
	FUNC6(buf);
	FUNC12(wpa_s);

	return 0;
}