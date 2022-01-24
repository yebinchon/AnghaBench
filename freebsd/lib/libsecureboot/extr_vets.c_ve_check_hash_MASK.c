#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hexbuf ;
struct TYPE_5__ {int /*<<< orphan*/  vtable; } ;
typedef  TYPE_1__ br_hash_compat_context ;
struct TYPE_6__ {int /*<<< orphan*/  (* out ) (int /*<<< orphan*/ *,unsigned char*) ;} ;
typedef  TYPE_2__ br_hash_class ;

/* Variables and functions */
 int VE_FINGERPRINT_OK ; 
 int VE_FINGERPRINT_WRONG ; 
 int br_sha512_SIZE ; 
 char* FUNC0 (char*,int,unsigned char*,size_t) ; 
 int FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,size_t) ; 

int
FUNC5(br_hash_compat_context *ctx, const br_hash_class *md,
    const char *path, const char *want, size_t hlen)
{
	char hexbuf[br_sha512_SIZE * 2 + 2];
	unsigned char hbuf[br_sha512_SIZE];
	char *hex;
	int rc;
	int n;

	md->out(&ctx->vtable, hbuf);
#ifdef VE_PCR_SUPPORT
	ve_pcr_update(hbuf, hlen);
#endif
	hex = FUNC0(hexbuf, sizeof(hexbuf), hbuf, hlen);
	if (!hex)
		return (VE_FINGERPRINT_WRONG);
	n = 2*hlen;
	if ((rc = FUNC1(hex, want, n))) {
		FUNC3("%s: %.*s != %.*s", path, n, hex, n, want);
		rc = VE_FINGERPRINT_WRONG;
	}
	return (rc ? rc : VE_FINGERPRINT_OK);
}