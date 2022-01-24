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
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int NID_undef ; 
 int /*<<< orphan*/  OBJ_F_OBJ_TXT2OBJ ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 unsigned char* FUNC7 (int) ; 
 int /*<<< orphan*/  V_ASN1_OBJECT ; 
 int /*<<< orphan*/  V_ASN1_UNIVERSAL ; 
 int FUNC8 (unsigned char*,int,char const*,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,unsigned char const**,int) ; 

ASN1_OBJECT *FUNC10(const char *s, int no_name)
{
    int nid = NID_undef;
    ASN1_OBJECT *op;
    unsigned char *buf;
    unsigned char *p;
    const unsigned char *cp;
    int i, j;

    if (!no_name) {
        if (((nid = FUNC4(s)) != NID_undef) ||
            ((nid = FUNC2(s)) != NID_undef))
            return FUNC3(nid);
    }

    /* Work out size of content octets */
    i = FUNC8(NULL, 0, s, -1);
    if (i <= 0) {
        /* Don't clear the error */
        /*
         * ERR_clear_error();
         */
        return NULL;
    }
    /* Work out total size */
    j = FUNC0(0, i, V_ASN1_OBJECT);
    if (j < 0)
        return NULL;

    if ((buf = FUNC7(j)) == NULL) {
        FUNC5(OBJ_F_OBJ_TXT2OBJ, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    p = buf;
    /* Write out tag+length */
    FUNC1(&p, 0, i, V_ASN1_OBJECT, V_ASN1_UNIVERSAL);
    /* Write out contents */
    FUNC8(p, i, s, -1);

    cp = buf;
    op = FUNC9(NULL, &cp, j);
    FUNC6(buf);
    return op;
}