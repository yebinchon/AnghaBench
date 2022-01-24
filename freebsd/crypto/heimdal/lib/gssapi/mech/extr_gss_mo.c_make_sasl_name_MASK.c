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
typedef  int u_char ;
typedef  TYPE_1__* gss_OID ;
struct TYPE_3__ {int length; int* elements; } ;
typedef  int /*<<< orphan*/  OM_uint32 ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  GSS_S_BAD_MECH ; 
 int /*<<< orphan*/  GSS_S_COMPLETE ; 
 void** basis_32 ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static OM_uint32
FUNC6(OM_uint32 *minor, const gss_OID mech, char sasl_name[16])
{
    EVP_MD_CTX *ctx;
    char *p = sasl_name;
    u_char hdr[2], hash[20], *h = hash;

    if (mech->length > 127)
        return GSS_S_BAD_MECH;

    hdr[0] = 0x06;
    hdr[1] = mech->length;

    ctx = FUNC3();
    FUNC1(ctx, FUNC4(), NULL);
    FUNC2(ctx, hdr, 2);
    FUNC2(ctx, mech->elements, mech->length);
    FUNC0(ctx, hash, NULL);

    FUNC5(p, "GS2-", 4);
    p += 4;

    *p++ = basis_32[(h[0] >> 3)];
    *p++ = basis_32[((h[0] & 7) << 2) | (h[1] >> 6)];
    *p++ = basis_32[(h[1] & 0x3f) >> 1];
    *p++ = basis_32[((h[1] & 1) << 4) | (h[2] >> 4)];
    *p++ = basis_32[((h[2] & 0xf) << 1) | (h[3] >> 7)];
    *p++ = basis_32[(h[3] & 0x7f) >> 2];
    *p++ = basis_32[((h[3] & 3) << 3) | (h[4] >> 5)];
    *p++ = basis_32[(h[4] & 0x1f)];
    *p++ = basis_32[(h[5] >> 3)];
    *p++ = basis_32[((h[5] & 7) << 2) | (h[6] >> 6)];
    *p++ = basis_32[(h[6] & 0x3f) >> 1];

    *p = '\0';

    return GSS_S_COMPLETE;
}