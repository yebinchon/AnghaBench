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
typedef  int isc_uint8_t ;
typedef  int isc_sha384_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int ISC_SHA384_DIGESTLENGTH ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 void** sha2_hex_digits ; 

char *
FUNC4(isc_sha384_t *context, char buffer[]) {
	isc_uint8_t	digest[ISC_SHA384_DIGESTLENGTH], *d = digest;
	unsigned int	i;

	/* Sanity check: */
	FUNC1(context != (isc_sha384_t *)0);

	if (buffer != (char*)0) {
		FUNC2(digest, context);

		for (i = 0; i < ISC_SHA384_DIGESTLENGTH; i++) {
			*buffer++ = sha2_hex_digits[(*d & 0xf0) >> 4];
			*buffer++ = sha2_hex_digits[*d & 0x0f];
			d++;
		}
		*buffer = (char)0;
	} else {
#ifdef ISC_PLATFORM_OPENSSLHASH
		EVP_MD_CTX_cleanup(context);
#else
		FUNC3(context, 0, sizeof(*context));
#endif
	}
	FUNC3(digest, 0, ISC_SHA384_DIGESTLENGTH);
	return buffer;
}