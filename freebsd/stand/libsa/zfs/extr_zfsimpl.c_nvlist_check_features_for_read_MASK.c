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

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/ ** features_for_read ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const**,int*) ; 

__attribute__((used)) static int
FUNC4(const unsigned char *nvlist)
{
	const unsigned char *p, *pair;
	int junk;
	int encoded_size, decoded_size;
	int rc;

	rc = 0;

	p = nvlist;
	FUNC3(&p, &junk);
	FUNC3(&p, &junk);

	pair = p;
	FUNC3(&p, &encoded_size);
	FUNC3(&p, &decoded_size);
	while (encoded_size && decoded_size) {
		int namelen, pairtype;
		const char *pairname;
		int i, found;

		found = 0;

		FUNC3(&p, &namelen);
		pairname = (const char*) p;
		p += FUNC2(namelen, 4);
		FUNC3(&p, &pairtype);

		for (i = 0; features_for_read[i] != NULL; i++) {
			if (!FUNC0(pairname, features_for_read[i], namelen)) {
				found = 1;
				break;
			}
		}

		if (!found) {
			FUNC1("ZFS: unsupported feature: %s\n", pairname);
			rc = EIO;
		}

		p = pair + encoded_size;

		pair = p;
		FUNC3(&p, &encoded_size);
		FUNC3(&p, &decoded_size);
	}

	return (rc);
}