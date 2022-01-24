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
struct TYPE_3__ {int /*<<< orphan*/  md_len; scalar_t__ num; scalar_t__ Nh; scalar_t__ Nl; void** h; } ;
typedef  TYPE_1__ SHA512_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  SHA384_DIGEST_LENGTH ; 
 void* FUNC0 (int) ; 

int FUNC1(SHA512_CTX *c)
{
    c->h[0] = FUNC0(0xcbbb9d5dc1059ed8);
    c->h[1] = FUNC0(0x629a292a367cd507);
    c->h[2] = FUNC0(0x9159015a3070dd17);
    c->h[3] = FUNC0(0x152fecd8f70e5939);
    c->h[4] = FUNC0(0x67332667ffc00b31);
    c->h[5] = FUNC0(0x8eb44a8768581511);
    c->h[6] = FUNC0(0xdb0c2e0d64f98fa7);
    c->h[7] = FUNC0(0x47b5481dbefa4fa4);

    c->Nl = 0;
    c->Nh = 0;
    c->num = 0;
    c->md_len = SHA384_DIGEST_LENGTH;
    return 1;
}