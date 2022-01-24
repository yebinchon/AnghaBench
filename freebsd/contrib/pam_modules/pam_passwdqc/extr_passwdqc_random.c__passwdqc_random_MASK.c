#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int random_bits; int max; } ;
typedef  TYPE_1__ passwdqc_params_t ;
typedef  int /*<<< orphan*/  output ;
typedef  int /*<<< orphan*/  bytes ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 char* SEPARATORS ; 
 char** _passwdqc_wordset_4k ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,unsigned char*,int) ; 

char *FUNC6(passwdqc_params_t *params)
{
	static char output[0x100];
	int bits;
	int use_separators, count, i;
	unsigned int length;
	char *start, *end;
	int fd;
	unsigned char bytes[2];

	if (!(bits = params->random_bits))
		return NULL;

	count = 1 + ((bits - 12) + 14) / 15;
	use_separators = ((bits + 11) / 12 != count);

	length = count * 7 - 1;
	if (length >= sizeof(output) || (int)length > params->max)
		return NULL;

	if ((fd = FUNC4("/dev/urandom", O_RDONLY)) < 0) return NULL;

	length = 0;
	do {
		if (FUNC5(fd, bytes, sizeof(bytes)) != sizeof(bytes)) {
			FUNC0(fd);
			return NULL;
		}

		i = (((int)bytes[1] & 0x0f) << 8) | (int)bytes[0];
		start = _passwdqc_wordset_4k[i];
		end = FUNC1(start, '\0', 6);
		if (!end) end = start + 6;
		if (length + (end - start) >= sizeof(output) - 1) {
			FUNC0(fd);
			return NULL;
		}
		FUNC2(&output[length], start, end - start);
		length += end - start;
		bits -= 12;

		if (use_separators && bits > 3) {
			i = ((int)bytes[1] & 0x70) >> 4;
			output[length++] = SEPARATORS[i];
			bits -= 3;
		} else
		if (bits > 0)
			output[length++] = ' ';
	} while (bits > 0);

	FUNC3(bytes, 0, sizeof(bytes));
	output[length] = '\0';

	FUNC0(fd);

	return output;
}