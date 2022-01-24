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
typedef  unsigned int u_int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 

__attribute__((used)) static u_int32_t
FUNC2(const char **latlonstrptr, int *which) {
	const char *cp;
	u_int32_t retval;
	int deg = 0, min = 0, secs = 0, secsfrac = 0;

	cp = *latlonstrptr;

	while (FUNC0((unsigned char)*cp))
		deg = deg * 10 + (*cp++ - '0');

	while (FUNC1((unsigned char)*cp))
		cp++;

	if (!(FUNC0((unsigned char)*cp)))
		goto fndhemi;

	while (FUNC0((unsigned char)*cp))
		min = min * 10 + (*cp++ - '0');

	while (FUNC1((unsigned char)*cp))
		cp++;

	if (!(FUNC0((unsigned char)*cp)))
		goto fndhemi;

	while (FUNC0((unsigned char)*cp))
		secs = secs * 10 + (*cp++ - '0');

	if (*cp == '.') {		/*%< decimal seconds */
		cp++;
		if (FUNC0((unsigned char)*cp)) {
			secsfrac = (*cp++ - '0') * 100;
			if (FUNC0((unsigned char)*cp)) {
				secsfrac += (*cp++ - '0') * 10;
				if (FUNC0((unsigned char)*cp)) {
					secsfrac += (*cp++ - '0');
				}
			}
		}
	}

	while (!FUNC1((unsigned char)*cp))	/*%< if any trailing garbage */
		cp++;

	while (FUNC1((unsigned char)*cp))
		cp++;

 fndhemi:
	switch (*cp) {
	case 'N': case 'n':
	case 'E': case 'e':
		retval = ((unsigned)1<<31)
			+ (((((deg * 60) + min) * 60) + secs) * 1000)
			+ secsfrac;
		break;
	case 'S': case 's':
	case 'W': case 'w':
		retval = ((unsigned)1<<31)
			- (((((deg * 60) + min) * 60) + secs) * 1000)
			- secsfrac;
		break;
	default:
		retval = 0;	/*%< invalid value -- indicates error */
		break;
	}

	switch (*cp) {
	case 'N': case 'n':
	case 'S': case 's':
		*which = 1;	/*%< latitude */
		break;
	case 'E': case 'e':
	case 'W': case 'w':
		*which = 2;	/*%< longitude */
		break;
	default:
		*which = 0;	/*%< error */
		break;
	}

	cp++;			/*%< skip the hemisphere */
	while (!FUNC1((unsigned char)*cp))	/*%< if any trailing garbage */
		cp++;

	while (FUNC1((unsigned char)*cp))	/*%< move to next field */
		cp++;

	*latlonstrptr = cp;

	return (retval);
}