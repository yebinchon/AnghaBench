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
typedef  int u_int ;
typedef  size_t u_char ;
struct pnpinfo {char* pi_desc; } ;
typedef  int ssize_t ;

/* Variables and functions */
#define  COMP_DEVICE_ID 130 
#define  END_TAG 129 
#define  ID_STRING_ANSI 128 
 int FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int FUNC2 (size_t) ; 
 int FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t*) ; 
 scalar_t__ FUNC5 (size_t*,int) ; 
 size_t* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct pnpinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (size_t*) ; 

__attribute__((used)) static int
FUNC9(struct pnpinfo *pi)
{
    u_char	tag, resinfo[8];
    u_int	limit;
    size_t	large_len;
    u_char	*str;

    limit = 1000;
    while ((limit-- > 0) && !FUNC5(&tag, 1)) {
	if (FUNC1(tag) == 0) {
	    /* Small resource */
	    switch (FUNC3(tag)) {

		case COMP_DEVICE_ID:
		    /* Got a compatible device id resource */
		    if (FUNC5(resinfo, FUNC2(tag)))
			return(1);
		    FUNC7(pi, FUNC8(resinfo));

		case END_TAG:
		    return(0);
		    break;

		default:
		    /* Skip this resource */
		    if (FUNC5(NULL, FUNC2(tag)))
			return(1);
		    break;
	    }
	} else {
	    /* Large resource */
	    if (FUNC5(resinfo, 2))
		return(1);

	    large_len = resinfo[1];
	    large_len = (large_len << 8) + resinfo[0];

	    switch(FUNC0(tag)) {

	    case ID_STRING_ANSI:
		str = FUNC6(large_len + 1);
		if (FUNC5(str, (ssize_t)large_len)) {
		    FUNC4(str);
		    return(1);
		}
		str[large_len] = 0;
		if (pi->pi_desc == NULL) {
		    pi->pi_desc = (char *)str;
		} else {
		    FUNC4(str);
		}
		break;
		
	    default:
		/* Large resource, skip it */
		if (FUNC5(NULL, (ssize_t)large_len))
		    return(1);
	    }
	}
    }
    return(1);
}