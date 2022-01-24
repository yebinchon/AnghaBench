#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ks; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* cbc ) (unsigned char const*,unsigned char*,size_t,int /*<<< orphan*/ *,scalar_t__) ;} ;
struct TYPE_6__ {TYPE_1__ ks; TYPE_2__ stream; } ;
typedef  TYPE_3__ EVP_DES_KEY ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  DES_cblock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const*,unsigned char*,long,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 size_t EVP_MAXCHUNK ; 
 int /*<<< orphan*/  FUNC4 (unsigned char const*,unsigned char*,size_t,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC5(EVP_CIPHER_CTX *ctx, unsigned char *out,
                          const unsigned char *in, size_t inl)
{
    EVP_DES_KEY *dat = (EVP_DES_KEY *) FUNC2(ctx);

    if (dat->stream.cbc != NULL) {
        (*dat->stream.cbc) (in, out, inl, &dat->ks.ks,
                            FUNC3(ctx));
        return 1;
    }
    while (inl >= EVP_MAXCHUNK) {
        FUNC0(in, out, (long)EVP_MAXCHUNK,
                         FUNC2(ctx),
                         (DES_cblock *)FUNC3(ctx),
                         FUNC1(ctx));
        inl -= EVP_MAXCHUNK;
        in += EVP_MAXCHUNK;
        out += EVP_MAXCHUNK;
    }
    if (inl)
        FUNC0(in, out, (long)inl,
                         FUNC2(ctx),
                         (DES_cblock *)FUNC3(ctx),
                         FUNC1(ctx));
    return 1;
}