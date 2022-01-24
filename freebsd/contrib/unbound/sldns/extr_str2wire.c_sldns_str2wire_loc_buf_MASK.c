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
typedef  int uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ; 
 int LDNS_WIREPARSE_ERR_INVALID_STR ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char**,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 scalar_t__ FUNC4 (char*) ; 
 double FUNC5 (char*,char**) ; 
 scalar_t__ FUNC6 (char*,char**,int) ; 

int FUNC7(const char* str, uint8_t* rd, size_t* len)
{
	uint32_t latitude = 0;
	uint32_t longitude = 0;
	uint32_t altitude = 0;

	uint32_t equator = (uint32_t)1<<31; /* 2**31 */

	/* only support version 0 */
	uint32_t h = 0;
	uint32_t m = 0;
	uint8_t size_b = 1, size_e = 2;
	uint8_t horiz_pre_b = 1, horiz_pre_e = 6;
	uint8_t vert_pre_b = 1, vert_pre_e = 3;

	double s = 0.0;
	int northerness;
	int easterness;

	char *my_str = (char *) str;

	if (FUNC1((unsigned char) *my_str)) {
		h = (uint32_t) FUNC6(my_str, &my_str, 10);
	} else {
		return LDNS_WIREPARSE_ERR_INVALID_STR;
	}

	while (FUNC0((unsigned char) *my_str)) {
		my_str++;
	}

	if (FUNC1((unsigned char) *my_str)) {
		m = (uint32_t) FUNC6(my_str, &my_str, 10);
	} else if (*my_str == 'N' || *my_str == 'S') {
		goto north;
	} else {
		return LDNS_WIREPARSE_ERR_INVALID_STR;
	}

	while (FUNC0((unsigned char) *my_str)) {
		my_str++;
	}

	if (FUNC1((unsigned char) *my_str)) {
		s = FUNC5(my_str, &my_str);
	}

	/* skip blanks before northerness */
	while (FUNC0((unsigned char) *my_str)) {
		my_str++;
	}

north:
	if (*my_str == 'N') {
		northerness = 1;
	} else if (*my_str == 'S') {
		northerness = 0;
	} else {
		return LDNS_WIREPARSE_ERR_INVALID_STR;
	}

	my_str++;

	/* store number */
	s = 1000.0 * s;
	/* add a little to make floor in conversion a round */
	s += 0.0005;
	latitude = (uint32_t) s;
	latitude += 1000 * 60 * m;
	latitude += 1000 * 60 * 60 * h;
	if (northerness) {
		latitude = equator + latitude;
	} else {
		latitude = equator - latitude;
	}
	while (FUNC0((unsigned char)*my_str)) {
		my_str++;
	}

	if (FUNC1((unsigned char) *my_str)) {
		h = (uint32_t) FUNC6(my_str, &my_str, 10);
	} else {
		return LDNS_WIREPARSE_ERR_INVALID_STR;
	}

	while (FUNC0((unsigned char) *my_str)) {
		my_str++;
	}

	if (FUNC1((unsigned char) *my_str)) {
		m = (uint32_t) FUNC6(my_str, &my_str, 10);
	} else if (*my_str == 'E' || *my_str == 'W') {
		goto east;
	} else {
		return LDNS_WIREPARSE_ERR_INVALID_STR;
	}

	while (FUNC0((unsigned char)*my_str)) {
		my_str++;
	}

	if (FUNC1((unsigned char) *my_str)) {
		s = FUNC5(my_str, &my_str);
	}

	/* skip blanks before easterness */
	while (FUNC0((unsigned char)*my_str)) {
		my_str++;
	}

east:
	if (*my_str == 'E') {
		easterness = 1;
	} else if (*my_str == 'W') {
		easterness = 0;
	} else {
		return LDNS_WIREPARSE_ERR_INVALID_STR;
	}

	my_str++;

	/* store number */
	s *= 1000.0;
	/* add a little to make floor in conversion a round */
	s += 0.0005;
	longitude = (uint32_t) s;
	longitude += 1000 * 60 * m;
	longitude += 1000 * 60 * 60 * h;

	if (easterness) {
		longitude += equator;
	} else {
		longitude = equator - longitude;
	}

	altitude = (uint32_t)(FUNC5(my_str, &my_str)*100.0 +
		10000000.0 + 0.5);
	if (*my_str == 'm' || *my_str == 'M') {
		my_str++;
	}

	if (FUNC4(my_str) > 0) {
		if(!FUNC2(my_str, &my_str, &size_b, &size_e))
			return LDNS_WIREPARSE_ERR_INVALID_STR;
	}

	if (FUNC4(my_str) > 0) {
		if(!FUNC2(my_str, &my_str, &horiz_pre_b, &horiz_pre_e))
			return LDNS_WIREPARSE_ERR_INVALID_STR;
	}

	if (FUNC4(my_str) > 0) {
		if(!FUNC2(my_str, &my_str, &vert_pre_b, &vert_pre_e))
			return LDNS_WIREPARSE_ERR_INVALID_STR;
	}

	if(*len < 16)
		return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
	rd[0] = 0;
	rd[1] = ((size_b << 4) & 0xf0) | (size_e & 0x0f);
	rd[2] = ((horiz_pre_b << 4) & 0xf0) | (horiz_pre_e & 0x0f);
	rd[3] = ((vert_pre_b << 4) & 0xf0) | (vert_pre_e & 0x0f);
	FUNC3(rd + 4, latitude);
	FUNC3(rd + 8, longitude);
	FUNC3(rd + 12, altitude);
	*len = 16;
	return LDNS_WIREPARSE_ERR_OK;
}