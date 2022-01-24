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
typedef  long uint8_t ;
typedef  int ossl_ssize_t ;

/* Variables and functions */
 int ERANGE ; 
 long LONG_MAX ; 
 long LONG_MIN ; 
 int /*<<< orphan*/  FUNC0 (char const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 long FUNC4 (char const*,char**,int) ; 

__attribute__((used)) static ossl_ssize_t FUNC5(const char **inptr, void *out)
{
    uint8_t *result = (uint8_t *)out;
    const char *in = *inptr;
    char *endp;
    long v;
    int e;

    FUNC3();
    v = FUNC4(in, &endp, 10);
    e = FUNC2();

    if (((v == LONG_MIN || v == LONG_MAX) && e == ERANGE) ||
        endp == in || !FUNC1(FUNC0(*endp)) ||
        v != (*result = (uint8_t) v)) {
        return -1;
    }
    for (in = endp; FUNC1(FUNC0(*in)); ++in)
        continue;

    *inptr = in;
    return 1;
}