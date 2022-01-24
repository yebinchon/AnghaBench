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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,size_t*,scalar_t__,scalar_t__) ; 
 int FUNC1 (scalar_t__*) ; 
 scalar_t__ FUNC2 (char**,size_t*,char*,...) ; 
 int FUNC3 (scalar_t__**,size_t*,char**,size_t*) ; 

int FUNC4(uint8_t** d, size_t* dl, char** str, size_t* sl)
{
	/* we could do checking (ie degrees < 90 etc)? */
	uint8_t version;
	uint8_t size;
	uint8_t horizontal_precision;
	uint8_t vertical_precision;
	uint32_t longitude;
	uint32_t latitude;
	uint32_t altitude;
	char northerness;
	char easterness;
	uint32_t h;
	uint32_t m;
	double s;
	uint32_t equator = (uint32_t)1 << 31; /* 2**31 */
	int w = 0;

	if(*dl < 16) return -1;
	version = (*d)[0];
	if(version != 0)
		return FUNC3(d, dl, str, sl);
	size = (*d)[1];
	horizontal_precision = (*d)[2];
	vertical_precision = (*d)[3];

	latitude = FUNC1((*d)+4);
	longitude = FUNC1((*d)+8);
	altitude = FUNC1((*d)+12);

	if (latitude > equator) {
		northerness = 'N';
		latitude = latitude - equator;
	} else {
		northerness = 'S';
		latitude = equator - latitude;
	}
	h = latitude / (1000 * 60 * 60);
	latitude = latitude % (1000 * 60 * 60);
	m = latitude / (1000 * 60);
	latitude = latitude % (1000 * 60);
	s = (double) latitude / 1000.0;
	w += FUNC2(str, sl, "%02u %02u %06.3f %c ",
		h, m, s, northerness);

	if (longitude > equator) {
		easterness = 'E';
		longitude = longitude - equator;
	} else {
		easterness = 'W';
		longitude = equator - longitude;
	}
	h = longitude / (1000 * 60 * 60);
	longitude = longitude % (1000 * 60 * 60);
	m = longitude / (1000 * 60);
	longitude = longitude % (1000 * 60);
	s = (double) longitude / (1000.0);
	w += FUNC2(str, sl, "%02u %02u %06.3f %c ",
		h, m, s, easterness);

	s = ((double) altitude) / 100;
	s -= 100000;

	if(altitude%100 != 0)
		w += FUNC2(str, sl, "%.2f", s);
	else
		w += FUNC2(str, sl, "%.0f", s);

	w += FUNC2(str, sl, "m ");

	w += FUNC0(str, sl, (size & 0xf0) >> 4, size & 0x0f);
	w += FUNC2(str, sl, "m ");

	w += FUNC0(str, sl, (horizontal_precision & 0xf0) >> 4,
		horizontal_precision & 0x0f);
	w += FUNC2(str, sl, "m ");

	w += FUNC0(str, sl, (vertical_precision & 0xf0) >> 4,
		vertical_precision & 0x0f);
	w += FUNC2(str, sl, "m");

	(*d)+=16;
	(*dl)-=16;
	return w;
}