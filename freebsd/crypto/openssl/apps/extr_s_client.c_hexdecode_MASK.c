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
typedef  char uint8_t ;
typedef  int ossl_ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 unsigned char* FUNC3 (int,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static ossl_ssize_t FUNC6(const char **inptr, void *result)
{
    unsigned char **out = (unsigned char **)result;
    const char *in = *inptr;
    unsigned char *ret = FUNC3(FUNC5(in) / 2, "hexdecode");
    unsigned char *cp = ret;
    uint8_t byte;
    int nibble = 0;

    if (ret == NULL)
        return -1;

    for (byte = 0; *in; ++in) {
        int x;

        if (FUNC4(FUNC2(*in)))
            continue;
        x = FUNC1(*in);
        if (x < 0) {
            FUNC0(ret);
            return 0;
        }
        byte |= (char)x;
        if ((nibble ^= 1) == 0) {
            *cp++ = byte;
            byte = 0;
        } else {
            byte <<= 4;
        }
    }
    if (nibble != 0) {
        FUNC0(ret);
        return 0;
    }
    *inptr = in;

    return cp - (*out = ret);
}