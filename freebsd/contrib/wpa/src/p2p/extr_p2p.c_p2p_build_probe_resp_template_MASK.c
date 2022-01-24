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
typedef  int u8 ;
struct wpabuf {int dummy; } ;
struct p2p_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int FUNC0 (struct p2p_data*,struct wpabuf*,struct wpabuf*,int*,unsigned int) ; 
 struct wpabuf* FUNC1 (struct p2p_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 scalar_t__ FUNC5 (struct wpabuf*) ; 

struct wpabuf * FUNC6(struct p2p_data *p2p,
					      unsigned int freq)
{
	struct wpabuf *ies, *buf;
	u8 addr[] = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF };
	int ret;

	ies = FUNC1(p2p, NULL, 0);
	if (!ies) {
		FUNC2(MSG_ERROR,
			   "CTRL: Failed to build Probe Response IEs");
		return NULL;
	}

	buf = FUNC3(200 + FUNC5(ies));
	if (!buf) {
		FUNC4(ies);
		return NULL;
	}

	ret = FUNC0(p2p, buf, ies, addr, freq);
	FUNC4(ies);
	if (ret) {
		FUNC4(buf);
		return NULL;
	}

	return buf;
}