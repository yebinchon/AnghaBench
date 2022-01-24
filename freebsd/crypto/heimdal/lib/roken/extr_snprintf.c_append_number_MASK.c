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
typedef  int u_longest ;
struct snprintf_state {int /*<<< orphan*/  (* append_char ) (struct snprintf_state*,char) ;} ;
typedef  int /*<<< orphan*/  nstr ;

/* Variables and functions */
 int alternate_flag ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int minus_flag ; 
 scalar_t__ FUNC1 (struct snprintf_state*,int,char) ; 
 int plus_flag ; 
 int space_flag ; 
 int /*<<< orphan*/  FUNC2 (struct snprintf_state*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct snprintf_state*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct snprintf_state*,char const) ; 
 int /*<<< orphan*/  FUNC5 (struct snprintf_state*,char) ; 
 scalar_t__ FUNC6 (int,int,unsigned int) ; 
 int zero_flag ; 

__attribute__((used)) static int
FUNC7(struct snprintf_state *state,
	      u_longest num, unsigned base, const char *rep,
	      int width, int prec, int flags, int minusp)
{
    int len = 0;
    u_longest n = num;
    char nstr[64]; /* enough for <192 bit octal integers */
    int nstart, nlen;
    char signchar;

    /* given precision, ignore zero flag */
    if(prec != -1)
	flags &= ~zero_flag;
    else
	prec = 1;

    /* format number as string */
    nstart = sizeof(nstr);
    nlen = 0;
    nstr[--nstart] = '\0';
    do {
	FUNC0(nstart > 0);
	nstr[--nstart] = rep[n % base];
	++nlen;
	n /= base;
    } while(n);

    /* zero value with zero precision should produce no digits */
    if(prec == 0 && num == 0) {
	nlen--;
	nstart++;
    }

    /* figure out what char to use for sign */
    if(minusp)
	signchar = '-';
    else if((flags & plus_flag))
	signchar = '+';
    else if((flags & space_flag))
	signchar = ' ';
    else
	signchar = '\0';

    if((flags & alternate_flag) && base == 8) {
	/* if necessary, increase the precision to
	   make first digit a zero */

	/* XXX C99 claims (regarding # and %o) that "if the value and
           precision are both 0, a single 0 is printed", but there is
           no such wording for %x. This would mean that %#.o would
           output "0", but %#.x "". This does not make sense, and is
           also not what other printf implementations are doing. */

	if(prec <= nlen && nstr[nstart] != '0' && nstr[nstart] != '\0')
	    prec = nlen + 1;
    }

    /* possible formats:
       pad | sign | alt | zero | digits
       sign | alt | zero | digits | pad   minus_flag
       sign | alt | zero | digits zero_flag */

    /* if not right justifying or padding with zeros, we need to
       compute the length of the rest of the string, and then pad with
       spaces */
    if(!(flags & (minus_flag | zero_flag))) {
	if(prec > nlen)
	    width -= prec;
	else
	    width -= nlen;

	if(FUNC6(flags, num, base))
	    width -= 2;

	if(signchar != '\0')
	    width--;

	/* pad to width */
	len += FUNC1(state, width, ' ');
    }
    if(signchar != '\0') {
	(*state->append_char)(state, signchar);
	++len;
    }
    if(FUNC6(flags, num, base)) {
	(*state->append_char)(state, '0');
	(*state->append_char)(state, rep[10] + 23); /* XXX */
	len += 2;
    }
    if(flags & zero_flag) {
	/* pad to width with zeros */
	if(prec - nlen > width - len - nlen)
	    len += FUNC1(state, prec - nlen, '0');
	else
	    len += FUNC1(state, width - len - nlen, '0');
    } else
	/* pad to prec with zeros */
	len += FUNC1(state, prec - nlen, '0');

    while(nstr[nstart] != '\0') {
	(*state->append_char)(state, nstr[nstart++]);
	++len;
    }

    if(flags & minus_flag)
	len += FUNC1(state, width - len, ' ');

    return len;
}