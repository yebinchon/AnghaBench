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
 int /*<<< orphan*/  FUNC0 (unsigned char const**,int*) ; 

__attribute__((used)) static const unsigned char *
FUNC1(const unsigned char *nvlist)
{
	const unsigned char *p, *pair;
	int junk;
	int encoded_size, decoded_size;

	p = nvlist;
	FUNC0(&p, &junk);
	FUNC0(&p, &junk);

	pair = p;
	FUNC0(&p, &encoded_size);
	FUNC0(&p, &decoded_size);
	while (encoded_size && decoded_size) {
		p = pair + encoded_size;

		pair = p;
		FUNC0(&p, &encoded_size);
		FUNC0(&p, &decoded_size);
	}

	return p;
}