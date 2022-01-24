#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int clock_seq_hi_and_reserved; void** node; void* clock_seq_low; void* time_hi_and_version; void* time_mid; void* time_low; } ;
typedef  TYPE_1__ uuid_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 void* FUNC0 (char const*,int,int*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uuid_s_bad_version ; 
 int /*<<< orphan*/  uuid_s_invalid_string_uuid ; 
 int /*<<< orphan*/  uuid_s_ok ; 

void
FUNC3(const char *s, uuid_t *u, uint32_t *status)
{
	int ok = 1;
	int n;

	if (s == NULL || *s == '\0') {
		FUNC2(u, status);
		return;
	}

	if (status != NULL)
		*status = uuid_s_invalid_string_uuid;
	if (FUNC1(s) != 36)
		return;
	/* Only support new format, check for all the right dashes */
	if (s[8] != '-' || s[13] != '-' || s[18] != '-' || s[23] != '-')
		return;
	/* native byte order */
	u->time_low                  = FUNC0(s     , 8, &ok);
	u->time_mid                  = FUNC0(s +  9, 4, &ok);
	u->time_hi_and_version       = FUNC0(s + 14, 4, &ok);
	/* Big endian, but presented as a whole number so decode as such */
	u->clock_seq_hi_and_reserved = FUNC0(s + 19, 2, &ok);
	u->clock_seq_low             = FUNC0(s + 21, 2, &ok);
	u->node[0]                   = FUNC0(s + 24, 2, &ok);
	u->node[1]                   = FUNC0(s + 26, 2, &ok);
	u->node[2]                   = FUNC0(s + 28, 2, &ok);
	u->node[3]                   = FUNC0(s + 30, 2, &ok);
	u->node[4]                   = FUNC0(s + 32, 2, &ok);
	u->node[5]                   = FUNC0(s + 34, 2, &ok);
	if (!ok)
		return;

	/* We have a successful scan. Check semantics... */
	n = u->clock_seq_hi_and_reserved;
	if ((n & 0x80) != 0x00 &&			/* variant 0? */
	    (n & 0xc0) != 0x80 &&			/* variant 1? */
	    (n & 0xe0) != 0xc0) {			/* variant 2? */
		if (status != NULL)
			*status = uuid_s_bad_version;
	} else {
		if (status != NULL)
			*status = uuid_s_ok;
	}
}