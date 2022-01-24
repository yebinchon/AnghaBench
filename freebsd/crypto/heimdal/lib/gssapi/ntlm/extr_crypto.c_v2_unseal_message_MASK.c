#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  TYPE_1__* gss_buffer_t ;
struct TYPE_6__ {int length; int /*<<< orphan*/ * value; } ;
typedef  int /*<<< orphan*/  RC4_KEY ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ GSS_S_BAD_MIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char const*) ; 

__attribute__((used)) static OM_uint32
FUNC4(gss_buffer_t in,
		  unsigned char signkey[16],
		  uint32_t seq,
		  RC4_KEY *sealkey,
		  gss_buffer_t out)
{
    OM_uint32 ret;

    if (in->length < 16)
	return GSS_S_BAD_MIC;

    out->length = in->length - 16;
    out->value = FUNC2(out->length);
    if (out->value == NULL)
	return GSS_S_BAD_MIC;

    FUNC0(sealkey, out->length, in->value, out->value);

    ret = FUNC3(out, signkey, sealkey, seq,
			    ((const unsigned char *)in->value) + out->length);
    if (ret) {
	OM_uint32 junk;
	FUNC1(&junk, out);
    }
    return ret;
}