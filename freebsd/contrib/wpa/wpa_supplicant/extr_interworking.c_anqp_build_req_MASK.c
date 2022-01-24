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
typedef  int /*<<< orphan*/  u16 ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANQP_QUERY_LIST ; 
 int /*<<< orphan*/ * FUNC0 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 int FUNC4 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf * FUNC7(u16 info_ids[], size_t num_ids,
				      struct wpabuf *extra)
{
	struct wpabuf *buf;
	size_t i;
	u8 *len_pos;

	buf = FUNC1(0, 4 + num_ids * 2 +
					 (extra ? FUNC4(extra) : 0));
	if (buf == NULL)
		return NULL;

	if (num_ids > 0) {
		len_pos = FUNC0(buf, ANQP_QUERY_LIST);
		for (i = 0; i < num_ids; i++)
			FUNC6(buf, info_ids[i]);
		FUNC2(buf, len_pos);
	}
	if (extra)
		FUNC5(buf, extra);

	FUNC3(buf);

	return buf;
}