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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int DATA_TYPE_NVLIST ; 
 int DATA_TYPE_NVLIST_ARRAY ; 
 int DATA_TYPE_STRING ; 
 int DATA_TYPE_UINT64 ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const**,int*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(const unsigned char *nvlist, const char *name, int type,
	    int *elementsp, void *valuep)
{
	const unsigned char *p, *pair;
	int junk;
	int encoded_size, decoded_size;

	p = nvlist;
	FUNC2(&p, &junk);
	FUNC2(&p, &junk);

	pair = p;
	FUNC2(&p, &encoded_size);
	FUNC2(&p, &decoded_size);
	while (encoded_size && decoded_size) {
		int namelen, pairtype, elements;
		const char *pairname;

		FUNC2(&p, &namelen);
		pairname = (const char*) p;
		p += FUNC1(namelen, 4);
		FUNC2(&p, &pairtype);

		if (!FUNC0(name, pairname, namelen) && type == pairtype) {
			FUNC2(&p, &elements);
			if (elementsp)
				*elementsp = elements;
			if (type == DATA_TYPE_UINT64) {
				FUNC3(&p, (uint64_t *) valuep);
				return (0);
			} else if (type == DATA_TYPE_STRING) {
				int len;
				FUNC2(&p, &len);
				(*(const char**) valuep) = (const char*) p;
				return (0);
			} else if (type == DATA_TYPE_NVLIST
				   || type == DATA_TYPE_NVLIST_ARRAY) {
				(*(const unsigned char**) valuep) =
					 (const unsigned char*) p;
				return (0);
			} else {
				return (EIO);
			}
		} else {
			/*
			 * Not the pair we are looking for, skip to the next one.
			 */
			p = pair + encoded_size;
		}

		pair = p;
		FUNC2(&p, &encoded_size);
		FUNC2(&p, &decoded_size);
	}

	return (EIO);
}