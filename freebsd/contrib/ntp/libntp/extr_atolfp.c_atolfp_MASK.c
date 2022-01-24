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
typedef  int u_long ;
struct TYPE_3__ {int l_ui; int l_uf; } ;
typedef  TYPE_1__ l_fp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 char* FUNC4 (char const*,char const) ; 
 int* ten_to_the_n ; 

int
FUNC5(
	const char *str,
	l_fp *lfp
	)
{
	register const char *cp;
	register u_long dec_i;
	register u_long dec_f;
	char *ind;
	int ndec;
	int isneg;
	static const char *digits = "0123456789";

	FUNC1(str != NULL);

	isneg = 0;
	dec_i = dec_f = 0;
	ndec = 0;
	cp = str;

	/*
	 * We understand numbers of the form:
	 *
	 * [spaces][-|+][digits][.][digits][spaces|\n|\0]
	 */
	while (FUNC3((unsigned char)*cp))
	    cp++;
	
	if (*cp == '-') {
		cp++;
		isneg = 1;
	}
	
	if (*cp == '+')
	    cp++;

	if (*cp != '.' && !FUNC2((unsigned char)*cp))
	    return 0;

	while (*cp != '\0' && (ind = FUNC4(digits, *cp)) != NULL) {
		dec_i = (dec_i << 3) + (dec_i << 1);	/* multiply by 10 */
		dec_i += (u_long)(ind - digits);
		cp++;
	}

	if (*cp != '\0' && !FUNC3((unsigned char)*cp)) {
		if (*cp++ != '.')
		    return 0;
	
		while (ndec < 9 && *cp != '\0'
		       && (ind = FUNC4(digits, *cp)) != NULL) {
			ndec++;
			dec_f = (dec_f << 3) + (dec_f << 1);	/* *10 */
			dec_f += (u_long)(ind - digits);
			cp++;
		}

		while (FUNC2((unsigned char)*cp))
		    cp++;
		
		if (*cp != '\0' && !FUNC3((unsigned char)*cp))
		    return 0;
	}

	if (ndec > 0) {
		register u_long tmp;
		register u_long bit;
		register u_long ten_fact;

		ten_fact = ten_to_the_n[ndec];

		tmp = 0;
		bit = 0x80000000;
		while (bit != 0) {
			dec_f <<= 1;
			if (dec_f >= ten_fact) {
				tmp |= bit;
				dec_f -= ten_fact;
			}
			bit >>= 1;
		}
		if ((dec_f << 1) > ten_fact)
		    tmp++;
		dec_f = tmp;
	}

	if (isneg)
	    FUNC0(dec_i, dec_f);
	
	lfp->l_ui = dec_i;
	lfp->l_uf = dec_f;
	return 1;
}