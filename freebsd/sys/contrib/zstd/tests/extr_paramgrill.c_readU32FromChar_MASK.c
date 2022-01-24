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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static unsigned FUNC2(const char** stringPtr)
{
    const char errorMsg[] = "error: numeric value too large";
    unsigned sign = 1;
    unsigned result = 0;
    if(**stringPtr == '-') { sign = (unsigned)-1; (*stringPtr)++; }
    while ((**stringPtr >='0') && (**stringPtr <='9')) {
        unsigned const max = (((unsigned)(-1)) / 10) - 1;
        if (result > max) FUNC1(errorMsg);
        result *= 10;
        FUNC0(**stringPtr >= '0');
        result += (unsigned)(**stringPtr - '0');
        (*stringPtr)++ ;
    }
    if ((**stringPtr=='K') || (**stringPtr=='M')) {
        unsigned const maxK = ((unsigned)(-1)) >> 10;
        if (result > maxK) FUNC1(errorMsg);
        result <<= 10;
        if (**stringPtr=='M') {
            if (result > maxK) FUNC1(errorMsg);
            result <<= 10;
        }
        (*stringPtr)++;  /* skip `K` or `M` */
        if (**stringPtr=='i') (*stringPtr)++;
        if (**stringPtr=='B') (*stringPtr)++;
    }
    return result * sign;
}