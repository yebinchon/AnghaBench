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
 char NUL ; 
 scalar_t__ OPTION_LOAD_KEEP ; 
 char const* FUNC0 (char const*,char const*) ; 
 char* FUNC1 (char const*) ; 
 scalar_t__ option_load_mode ; 
 char* FUNC2 (char const*,char*) ; 

__attribute__((used)) static char const *
FUNC3(char const * src, size_t nm_len, char const * val, size_t * len)
{
    char z[72] = "</";
    char * dst = z + 2;

    do  {
        *(dst++) = *(src++);
    } while (--nm_len > 0); /* nm_len is known to be 64 or less */
    *(dst++) = '>';
    *dst = NUL;

    {
        char const * res = FUNC2(val, z);

        if (res != NULL) {
            char const * end = (option_load_mode != OPTION_LOAD_KEEP)
                ? FUNC0(val, res)
                : res;
            *len = (size_t)(end - val); /* includes trailing white space */
            res =  FUNC1(res + (dst - z));
        }
        return res;
    }
}