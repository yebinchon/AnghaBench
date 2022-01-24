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
typedef  size_t uint8_t ;
typedef  size_t uint16_t ;
typedef  size_t u_int ;
struct pnpinfo {char* pi_desc; } ;
struct pnp_devNode {size_t* dn_data; size_t dn_size; } ;

/* Variables and functions */
#define  COMP_DEVICE_ID 130 
#define  END_TAG 129 
#define  ID_STRING_ANSI 128 
 int FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (size_t) ; 
 size_t FUNC2 (size_t) ; 
 int FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct pnpinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (size_t*) ; 

__attribute__((used)) static void
FUNC9(struct pnpinfo *pi, struct pnp_devNode *dn)
{
    u_int	tag, i, rlen, dlen;
    uint8_t	*p;
    char	*str;

    p = dn->dn_data;			/* point to resource data */
    dlen = dn->dn_size - (p - (uint8_t *)dn);	/* length of resource data */

    for (i = 0; i < dlen; i+= rlen) {
	tag = p[i];
	i++;
	if (FUNC1(tag) == 0) {
	    rlen = FUNC2(tag);
	    /* small resource */
	    switch (FUNC3(tag)) {

	    case COMP_DEVICE_ID:
		/* got a compatible device ID */
		FUNC7(pi, FUNC8(p + i));
		break;
		
	    case END_TAG:
		return;
	    }
	} else {
	    /* large resource */
	    rlen = *(uint16_t *)(p + i);
	    i += sizeof(uint16_t);
	    
	    switch(FUNC0(tag)) {

	    case ID_STRING_ANSI:
		str = FUNC6(rlen + 1);
		FUNC4(p + i, str, rlen);
		str[rlen] = 0;
		if (pi->pi_desc == NULL) {
		    pi->pi_desc = str;
		} else {
		    FUNC5(str);
		}
		break;
	    }
	}
    }
}