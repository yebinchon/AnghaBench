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
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_STATUS_WIRE_RDATA_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__* FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int FUNC6 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

ldns_status
FUNC8(ldns_buffer *output, const ldns_rdf *rdf)
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

	uint32_t equator = (uint32_t) FUNC2(2, 31);

        if(FUNC5(rdf) < 1) {
                return LDNS_STATUS_WIRE_RDATA_ERR;
        }
       	version = FUNC4(rdf)[0];
	if (version == 0) {
		if(FUNC5(rdf) < 16) {
			return LDNS_STATUS_WIRE_RDATA_ERR;
		}
		size = FUNC4(rdf)[1];
		horizontal_precision = FUNC4(rdf)[2];
		vertical_precision = FUNC4(rdf)[3];

		latitude = FUNC6(&FUNC4(rdf)[4]);
		longitude = FUNC6(&FUNC4(rdf)[8]);
		altitude = FUNC6(&FUNC4(rdf)[12]);

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
		FUNC0(output, "%02u %02u %0.3f %c ",
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
		FUNC0(output, "%02u %02u %0.3f %c ",
			h, m, s, easterness);


		s = ((double) altitude) / 100;
		s -= 100000;

		if(altitude%100 != 0)
			FUNC0(output, "%.2f", s);
		else
			FUNC0(output, "%.0f", s);

		FUNC0(output, "m ");

		FUNC7(output, (size & 0xf0) >> 4, size & 0x0f);
		FUNC0(output, "m ");

		FUNC7(output, (horizontal_precision & 0xf0) >> 4,
			horizontal_precision & 0x0f);
		FUNC0(output, "m ");

		FUNC7(output, (vertical_precision & 0xf0) >> 4,
			vertical_precision & 0x0f);
		FUNC0(output, "m");

		return FUNC1(output);
	} else {
		return FUNC3(output, rdf);
	}
}