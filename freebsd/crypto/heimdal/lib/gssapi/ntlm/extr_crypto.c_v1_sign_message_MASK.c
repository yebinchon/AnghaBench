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
typedef  int /*<<< orphan*/  sigature ;
typedef  TYPE_1__* gss_buffer_t ;
struct TYPE_3__ {int /*<<< orphan*/  length; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  RC4_KEY ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_S_UNAVAILABLE ; 
 int FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned char*) ; 

__attribute__((used)) static OM_uint32
FUNC5(gss_buffer_t in,
		RC4_KEY *signkey,
		uint32_t seq,
		unsigned char out[16])
{
    unsigned char sigature[12];
    uint32_t crc;

    FUNC2();
    crc = FUNC3(in->value, in->length, 0);

    FUNC4(0, &sigature[0]);
    FUNC4(crc, &sigature[4]);
    FUNC4(seq, &sigature[8]);

    FUNC4(1, out); /* version */
    FUNC1(signkey, sizeof(sigature), sigature, out + 4);

    if (FUNC0(out + 4, 4) != 1)
	return GSS_S_UNAVAILABLE;

    return 0;
}