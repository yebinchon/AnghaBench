#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
struct TYPE_3__ {unsigned char* pgpbytes; int pgpbytes_len; int sig_alg; int /*<<< orphan*/  sig_len; int /*<<< orphan*/  sig; void* key_id; int /*<<< orphan*/  hash_alg; int /*<<< orphan*/  sig_type; } ;
typedef  TYPE_1__ OpenPGP_sig ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char**,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC1 (unsigned char**,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 unsigned char* FUNC3 (int,int) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char*,int) ; 
 void* FUNC6 (unsigned char*,int) ; 
 int FUNC7 (unsigned char*,int) ; 

ssize_t
FUNC8(int tag, unsigned char **pptr, size_t len, OpenPGP_sig *sig)
{
	unsigned char *ptr;
	unsigned char *pgpbytes;
	unsigned char *sp;
	int version;
	int hcount = 0;
	int ucount = 0;
	int stag = 0;
	int n;

	n = tag;			/* avoid unused */

	/*
	 * We need to keep a reference to the packet bytes
	 * as these form part of the signature data.
	 *
	 * @sa rfc4880:5.2.4
	 */
	pgpbytes = ptr = *pptr;
	version = *ptr++;
	if (version == 3) {
		ptr++;
		sig->pgpbytes = FUNC4(5);
		if (!sig->pgpbytes)
			return (-1);
		FUNC5(sig->pgpbytes, ptr, 5);
		sig->pgpbytes_len = 5;
		sig->sig_type = *ptr++;
		ptr += 4;
		sig->key_id = FUNC6(ptr, 8);
		ptr += 8;
		sig->sig_alg = *ptr++;
		sig->hash_alg = *ptr++;
	} else if (version == 4) {
		sig->sig_type = *ptr++;
		sig->sig_alg = *ptr++;
		sig->hash_alg = *ptr++;
		hcount = FUNC7(ptr, 2);
		ptr += 2;
		sig->pgpbytes_len = (size_t)hcount + 6;
		sig->pgpbytes = FUNC4(sig->pgpbytes_len + 6);
		if (!sig->pgpbytes)
			return (-1);
		FUNC5(sig->pgpbytes, pgpbytes, sig->pgpbytes_len);
		sp = &sig->pgpbytes[sig->pgpbytes_len];
		*sp++ = 4;
		*sp++ = 255;
		FUNC5(sp, FUNC3(4, (int)sig->pgpbytes_len), 4);
		sig->pgpbytes_len += 6;

		while (hcount > 0) {
			sp = FUNC1(&ptr, &stag, &n);
			hcount -= n;
			/* can check stag to see if we care */
		}
		ucount = FUNC7(ptr, 2);
		ptr += 2;
		while (ucount > 0) {
			sp = FUNC1(&ptr, &stag, &n);
			ucount -= n;
			/* can check stag to see if we care */
			if (stag == 16) {
				FUNC2(sig->key_id);
				sig->key_id = FUNC6(sp, 8);
			}
		}
	} else
		return (-1);
	ptr += 2;			/* skip hash16 */
	if (sig->sig_alg == 1) {	/* RSA */
		sig->sig = FUNC0(&ptr, &sig->sig_len);
	}
	/* we are done */
	return ((ssize_t)len);
}