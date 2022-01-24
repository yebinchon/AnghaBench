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

/* Variables and functions */
 int DP_F_MINUS ; 
 int INT_MAX ; 
 size_t FUNC0 (char const*,size_t) ; 
 size_t SIZE_MAX ; 
 int /*<<< orphan*/  FUNC1 (char**,char**,size_t*,size_t*,char) ; 

__attribute__((used)) static int
FUNC2(char **sbuffer,
       char **buffer,
       size_t *currlen,
       size_t *maxlen, const char *value, int flags, int min, int max)
{
    int padlen;
    size_t strln;
    int cnt = 0;

    if (value == 0)
        value = "<NULL>";

    strln = FUNC0(value, max < 0 ? SIZE_MAX : (size_t)max);

    padlen = min - strln;
    if (min < 0 || padlen < 0)
        padlen = 0;
    if (max >= 0) {
        /*
         * Calculate the maximum output including padding.
         * Make sure max doesn't overflow into negativity
         */
        if (max < INT_MAX - padlen)
            max += padlen;
        else
            max = INT_MAX;
    }
    if (flags & DP_F_MINUS)
        padlen = -padlen;

    while ((padlen > 0) && (max < 0 || cnt < max)) {
        if (!FUNC1(sbuffer, buffer, currlen, maxlen, ' '))
            return 0;
        --padlen;
        ++cnt;
    }
    while (strln > 0 && (max < 0 || cnt < max)) {
        if (!FUNC1(sbuffer, buffer, currlen, maxlen, *value++))
            return 0;
        --strln;
        ++cnt;
    }
    while ((padlen < 0) && (max < 0 || cnt < max)) {
        if (!FUNC1(sbuffer, buffer, currlen, maxlen, ' '))
            return 0;
        ++padlen;
        ++cnt;
    }
    return 1;
}