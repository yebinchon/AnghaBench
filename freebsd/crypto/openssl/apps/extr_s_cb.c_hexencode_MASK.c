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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,size_t) ; 
 char* FUNC1 (int,char*) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static char *FUNC4(const unsigned char *data, size_t len)
{
    static const char *hex = "0123456789abcdef";
    char *out;
    char *cp;
    size_t outlen = 2 * len + 1;
    int ilen = (int) outlen;

    if (outlen < len || ilen < 0 || outlen != (size_t)ilen) {
        FUNC0(bio_err, "%s: %zu-byte buffer too large to hexencode\n",
                   FUNC3(), len);
        FUNC2(1);
    }
    cp = out = FUNC1(ilen, "TLSA hex data buffer");

    while (len-- > 0) {
        *cp++ = hex[(*data >> 4) & 0x0f];
        *cp++ = hex[*data++ & 0x0f];
    }
    *cp = '\0';
    return out;
}