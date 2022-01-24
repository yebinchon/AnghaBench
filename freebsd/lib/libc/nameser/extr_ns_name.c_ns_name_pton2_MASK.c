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
typedef  int u_char ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int MAXCDNAME ; 
 int NS_CMPRSFLGS ; 
 char* digits ; 
 int FUNC0 (char const**,char*,int**,int**,int*) ; 
 int errno ; 
 char* FUNC1 (char const*,int) ; 

int
FUNC2(const char *src, u_char *dst, size_t dstsiz, size_t *dstlen) {
	u_char *label, *bp, *eom;
	int c, n, escaped, e = 0;
	char *cp;

	escaped = 0;
	bp = dst;
	eom = dst + dstsiz;
	label = bp++;

	while ((c = *src++) != 0) {
		if (escaped) {
			if (c == '[') { /*%< start a bit string label */
				if ((cp = FUNC1(src, ']')) == NULL) {
					errno = EINVAL; /*%< ??? */
					return (-1);
				}
				if ((e = FUNC0(&src, cp + 2,
							 &label, &bp, eom))
				    != 0) {
					errno = e;
					return (-1);
				}
				escaped = 0;
				label = bp++;
				if ((c = *src++) == 0)
					goto done;
				else if (c != '.') {
					errno = EINVAL;
					return	(-1);
				}
				continue;
			}
			else if ((cp = FUNC1(digits, c)) != NULL) {
				n = (cp - digits) * 100;
				if ((c = *src++) == 0 ||
				    (cp = FUNC1(digits, c)) == NULL) {
					errno = EMSGSIZE;
					return (-1);
				}
				n += (cp - digits) * 10;
				if ((c = *src++) == 0 ||
				    (cp = FUNC1(digits, c)) == NULL) {
					errno = EMSGSIZE;
					return (-1);
				}
				n += (cp - digits);
				if (n > 255) {
					errno = EMSGSIZE;
					return (-1);
				}
				c = n;
			}
			escaped = 0;
		} else if (c == '\\') {
			escaped = 1;
			continue;
		} else if (c == '.') {
			c = (bp - label - 1);
			if ((c & NS_CMPRSFLGS) != 0) {	/*%< Label too big. */
				errno = EMSGSIZE;
				return (-1);
			}
			if (label >= eom) {
				errno = EMSGSIZE;
				return (-1);
			}
			*label = c;
			/* Fully qualified ? */
			if (*src == '\0') {
				if (c != 0) {
					if (bp >= eom) {
						errno = EMSGSIZE;
						return (-1);
					}
					*bp++ = '\0';
				}
				if ((bp - dst) > MAXCDNAME) {
					errno = EMSGSIZE;
					return (-1);
				}
				if (dstlen != NULL)
					*dstlen = (bp - dst);
				return (1);
			}
			if (c == 0 || *src == '.') {
				errno = EMSGSIZE;
				return (-1);
			}
			label = bp++;
			continue;
		}
		if (bp >= eom) {
			errno = EMSGSIZE;
			return (-1);
		}
		*bp++ = (u_char)c;
	}
	c = (bp - label - 1);
	if ((c & NS_CMPRSFLGS) != 0) {		/*%< Label too big. */
		errno = EMSGSIZE;
		return (-1);
	}
  done:
	if (label >= eom) {
		errno = EMSGSIZE;
		return (-1);
	}
	*label = c;
	if (c != 0) {
		if (bp >= eom) {
			errno = EMSGSIZE;
			return (-1);
		}
		*bp++ = 0;
	}
	if ((bp - dst) > MAXCDNAME) {	/*%< src too big */
		errno = EMSGSIZE;
		return (-1);
	}
	if (dstlen != NULL)
		*dstlen = (bp - dst);
	return (0);
}