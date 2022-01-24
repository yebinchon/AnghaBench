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
 int /*<<< orphan*/  MSG_DEBUG ; 
 unsigned char* FUNC0 (unsigned char*,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static unsigned char * FUNC4(char *start, size_t *decoded_len)
{
	char *pos, *pos2;
	unsigned char *decoded;

	pos = FUNC2(start, "<Base64>");
	if (pos == NULL)
		return NULL;

	pos += 8;
	pos2 = FUNC2(pos, "</Base64>");
	if (pos2 == NULL)
		return NULL;
	*pos2 = '\0';

	decoded = FUNC0((unsigned char *) pos, FUNC1(pos),
				decoded_len);
	*pos2 = '<';
	if (decoded == NULL) {
		FUNC3(MSG_DEBUG, "TNC: Failed to decode Base64 data");
	}

	return decoded;
}