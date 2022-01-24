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
typedef  int /*<<< orphan*/  str2 ;
typedef  int /*<<< orphan*/  str1 ;

/* Variables and functions */
 int MAX_LINE_SIZE ; 
 char* FUNC0 (char*,char) ; 
 int FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static int FUNC4(char *s1, char *s2) {
	char	*s1_p2, *s2_p2;
	char	str1[MAX_LINE_SIZE], str2[MAX_LINE_SIZE];
	int		s1_p1_len, s2_p1_len;
	int		retval;

	if ((s1_p2 = FUNC0(s1, '_'))) {	/* if an underscore is found... */
		s1_p1_len = s1_p2 - s1;			/* the prefix length is the difference in pointers */
		s1_p2++;						/* the suffix actually starts _after_ the underscore */
	} else {							/* otherwise... */
		s1_p1_len = FUNC2(s1);			/* the prefix length is the length of the string itself */
		s1_p2 = 0;						/* and there is no suffix */
	}
	if ((s2_p2 = FUNC0(s2, '_'))) {	/* now do the same for the second string */
		s2_p1_len = s2_p2 - s2;
		s2_p2++;
	} else {
		s2_p1_len = FUNC2(s2);
		s2_p2 = 0;
	}
	FUNC3(str1, s1, (s1_p1_len > sizeof(str1)) ? s1_p1_len : sizeof(str1));   *(str1 + s1_p1_len) = 0;
	FUNC3(str2, s2, (s2_p1_len > sizeof(str2)) ? s2_p1_len : sizeof(str2));   *(str2 + s2_p1_len) = 0;
	retval = FUNC1(str1, str2);
	if (retval != 0) return retval;		/* if they are not identical, then we can quit now and return the indication */
	return FUNC1(s1_p2, s2_p2);		/* otherwise we return the result of comparing the 2nd half of the string */
}