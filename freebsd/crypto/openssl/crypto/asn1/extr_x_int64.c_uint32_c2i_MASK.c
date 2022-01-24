#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  utmp2 ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {int size; } ;
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  TYPE_1__ ASN1_ITEM ;

/* Variables and functions */
 scalar_t__ ABS_INT32_MIN ; 
 int /*<<< orphan*/  ASN1_F_UINT32_C2I ; 
 int /*<<< orphan*/  ASN1_R_ILLEGAL_NEGATIVE_VALUE ; 
 int /*<<< orphan*/  ASN1_R_TOO_LARGE ; 
 int /*<<< orphan*/  ASN1_R_TOO_SMALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ INT32_MAX ; 
 int INTxx_FLAG_SIGNED ; 
 scalar_t__ UINT32_MAX ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int*,unsigned char const**,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,TYPE_1__ const*) ; 

__attribute__((used)) static int FUNC4(ASN1_VALUE **pval, const unsigned char *cont, int len,
                    int utype, char *free_cont, const ASN1_ITEM *it)
{
    uint64_t utmp = 0;
    uint32_t utmp2 = 0;
    char *cp;
    int neg = 0;

    if (*pval == NULL && !FUNC3(pval, it))
        return 0;

    cp = (char *)*pval;

    /*
     * Strictly speaking, zero length is malformed.  However, long_c2i
     * (x_long.c) encodes 0 as a zero length INTEGER (wrongly, of course),
     * so for the sake of backward compatibility, we still decode zero
     * length INTEGERs as the number zero.
     */
    if (len == 0)
        goto long_compat;

    if (!FUNC1(&utmp, &neg, &cont, len))
        return 0;
    if ((it->size & INTxx_FLAG_SIGNED) == 0 && neg) {
        FUNC0(ASN1_F_UINT32_C2I, ASN1_R_ILLEGAL_NEGATIVE_VALUE);
        return 0;
    }
    if (neg) {
        if (utmp > ABS_INT32_MIN) {
            FUNC0(ASN1_F_UINT32_C2I, ASN1_R_TOO_SMALL);
            return 0;
        }
        utmp = 0 - utmp;
    } else {
        if (((it->size & INTxx_FLAG_SIGNED) != 0 && utmp > INT32_MAX)
            || ((it->size & INTxx_FLAG_SIGNED) == 0 && utmp > UINT32_MAX)) {
            FUNC0(ASN1_F_UINT32_C2I, ASN1_R_TOO_LARGE);
            return 0;
        }
    }

 long_compat:
    utmp2 = (uint32_t)utmp;
    FUNC2(cp, &utmp2, sizeof(utmp2));
    return 1;
}