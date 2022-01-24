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
typedef  size_t u16 ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 

__attribute__((used)) static int FUNC2(char *name, size_t name_len,
			const u8 *data, size_t data_len)
{
	/* Inside the WPS IE are a series of attributes, using two byte IDs
	 * and two byte lengths. We're looking for the model name, if
	 * present. */
	while (data_len >= 4) {
		u16 id, elen;

		id = FUNC0(data);
		elen = FUNC0(data + 2);
		data += 4;
		data_len -= 4;

		if (elen > data_len)
			return 0;

		if (id == 0x1023) {
			/* Model name, like 'Nexus 7' */
			size_t n = (elen < name_len) ? elen : name_len;
			FUNC1(name, (const char *) data, n);
			return n;
		}

		data += elen;
		data_len -= elen;
	}

	return 0;
}