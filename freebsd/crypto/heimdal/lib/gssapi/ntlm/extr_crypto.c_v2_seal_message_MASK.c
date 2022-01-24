#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  TYPE_1__* gss_buffer_t ;
struct TYPE_5__ {int length; unsigned char* value; } ;
typedef  int /*<<< orphan*/  RC4_KEY ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_1__* const,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*) ; 

__attribute__((used)) static OM_uint32
FUNC4(const gss_buffer_t in,
		unsigned char signkey[16],
		uint32_t seq,
		RC4_KEY *sealkey,
		gss_buffer_t out)
{
    unsigned char *p;
    OM_uint32 ret;

    if (in->length + 16 < in->length)
	return EINVAL;

    p = FUNC2(in->length + 16);
    if (p == NULL)
	return ENOMEM;

    FUNC0(sealkey, in->length, in->value, p);

    ret = FUNC3(in, signkey, sealkey, seq, &p[in->length]);
    if (ret) {
	FUNC1(p);
	return ret;
    }

    out->value = p;
    out->length = in->length + 16;

    return 0;
}