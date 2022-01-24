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
typedef  int /*<<< orphan*/  X509 ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int) ; 
 int /*<<< orphan*/  X509_F_I2D_X509_AUX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char**) ; 

int FUNC4(X509 *a, unsigned char **pp)
{
    int length;
    unsigned char *tmp;

    /* Buffer provided by caller */
    if (pp == NULL || *pp != NULL)
        return FUNC3(a, pp);

    /* Obtain the combined length */
    if ((length = FUNC3(a, NULL)) <= 0)
        return length;

    /* Allocate requisite combined storage */
    *pp = tmp = FUNC1(length);
    if (tmp == NULL) {
        FUNC2(X509_F_I2D_X509_AUX, ERR_R_MALLOC_FAILURE);
        return -1;
    }

    /* Encode, but keep *pp at the originally malloced pointer */
    length = FUNC3(a, &tmp);
    if (length <= 0) {
        FUNC0(*pp);
        *pp = NULL;
    }
    return length;
}