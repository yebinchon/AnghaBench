#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ks; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* cbc ) (unsigned char const*,unsigned char*,size_t,int /*<<< orphan*/ ,scalar_t__) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  ks3; int /*<<< orphan*/  ks2; int /*<<< orphan*/  ks1; TYPE_2__ ks; TYPE_1__ stream; } ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  DES_cblock ;
typedef  TYPE_3__ DES_EDE_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const*,unsigned char*,long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 size_t EVP_MAXCHUNK ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char const*,unsigned char*,size_t,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(EVP_CIPHER_CTX *ctx, unsigned char *out,
                              const unsigned char *in, size_t inl)
{
    DES_EDE_KEY *dat = FUNC3(ctx);

    if (dat->stream.cbc != NULL) {
        (*dat->stream.cbc) (in, out, inl, dat->ks.ks,
                            FUNC2(ctx));
        return 1;
    }

    while (inl >= EVP_MAXCHUNK) {
        FUNC0(in, out, (long)EVP_MAXCHUNK,
                             &dat->ks1, &dat->ks2, &dat->ks3,
                             (DES_cblock *)FUNC2(ctx),
                             FUNC1(ctx));
        inl -= EVP_MAXCHUNK;
        in += EVP_MAXCHUNK;
        out += EVP_MAXCHUNK;
    }
    if (inl)
        FUNC0(in, out, (long)inl,
                             &dat->ks1, &dat->ks2, &dat->ks3,
                             (DES_cblock *)FUNC2(ctx),
                             FUNC1(ctx));
    return 1;
}