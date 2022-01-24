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
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  KDF_F_PKEY_SCRYPT_SET_MEMBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,size_t) ; 
 unsigned char* FUNC2 (int) ; 
 unsigned char* FUNC3 (unsigned char const*,int const) ; 

__attribute__((used)) static int FUNC4(unsigned char **buffer, size_t *buflen,
                                  const unsigned char *new_buffer,
                                  const int new_buflen)
{
    if (new_buffer == NULL)
        return 1;

    if (new_buflen < 0)
        return 0;

    if (*buffer != NULL)
        FUNC1(*buffer, *buflen);

    if (new_buflen > 0) {
        *buffer = FUNC3(new_buffer, new_buflen);
    } else {
        *buffer = FUNC2(1);
    }
    if (*buffer == NULL) {
        FUNC0(KDF_F_PKEY_SCRYPT_SET_MEMBUF, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    *buflen = new_buflen;
    return 1;
}