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
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_ASN1_ITEM_FLAGS_I2D ; 
 int FUNC0 (int /*<<< orphan*/ **,unsigned char**,int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 unsigned char* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(ASN1_VALUE *val, unsigned char **out,
                               const ASN1_ITEM *it, int flags)
{
    if (out && !*out) {
        unsigned char *p, *buf;
        int len;

        len = FUNC0(&val, NULL, it, -1, flags);
        if (len <= 0)
            return len;
        if ((buf = FUNC2(len)) == NULL) {
            FUNC1(ASN1_F_ASN1_ITEM_FLAGS_I2D, ERR_R_MALLOC_FAILURE);
            return -1;
        }
        p = buf;
        FUNC0(&val, &p, it, -1, flags);
        *out = buf;
        return len;
    }

    return FUNC0(&val, out, it, -1, flags);
}