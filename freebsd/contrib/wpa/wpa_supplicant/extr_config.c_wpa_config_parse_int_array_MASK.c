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
 int FUNC0 (char const*) ; 
 int* FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int* FUNC3 (int*,size_t,int) ; 
 char* FUNC4 (char const*,char) ; 

__attribute__((used)) static int * FUNC5(const char *value)
{
	int *freqs;
	size_t used, len;
	const char *pos;

	used = 0;
	len = 10;
	freqs = FUNC1(len + 1, sizeof(int));
	if (freqs == NULL)
		return NULL;

	pos = value;
	while (pos) {
		while (*pos == ' ')
			pos++;
		if (used == len) {
			int *n;
			size_t i;
			n = FUNC3(freqs, len * 2 + 1, sizeof(int));
			if (n == NULL) {
				FUNC2(freqs);
				return NULL;
			}
			for (i = len; i <= len * 2; i++)
				n[i] = 0;
			freqs = n;
			len *= 2;
		}

		freqs[used] = FUNC0(pos);
		if (freqs[used] == 0)
			break;
		used++;
		pos = FUNC4(pos + 1, ' ');
	}

	return freqs;
}