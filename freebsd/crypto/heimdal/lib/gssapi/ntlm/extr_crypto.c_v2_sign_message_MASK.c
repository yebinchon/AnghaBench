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
typedef  int uint32_t ;
typedef  TYPE_1__* gss_buffer_t ;
struct TYPE_3__ {unsigned char* value; int length; } ;
typedef  int /*<<< orphan*/  RC4_KEY ;
typedef  int /*<<< orphan*/  OM_uint32 ;
typedef  int /*<<< orphan*/  HMAC_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GSS_S_COMPLETE ; 
 int /*<<< orphan*/  GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static OM_uint32
FUNC10(gss_buffer_t in,
		unsigned char signkey[16],
		RC4_KEY *sealkey,
		uint32_t seq,
		unsigned char out[16])
{
    unsigned char hmac[16];
    unsigned int hmaclen;
    HMAC_CTX *c;

    c = FUNC2();
    if (c == NULL)
	return GSS_S_FAILURE;
    FUNC4(c, signkey, 16, FUNC0(), NULL);

    FUNC7(seq, hmac);
    FUNC5(c, hmac, 4);
    FUNC5(c, in->value, in->length);
    FUNC3(c, hmac, &hmaclen);
    FUNC1(c);

    FUNC7(1, &out[0]);
    if (sealkey)
	FUNC6(sealkey, 8, hmac, &out[4]);
    else
	FUNC8(&out[4], hmac, 8);

    FUNC9(&out[12], 0, 4);

    return GSS_S_COMPLETE;
}