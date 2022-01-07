
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_ULONG ;



__attribute__((used)) static void nist_cp_bn(BN_ULONG *dst, const BN_ULONG *src, int top)
{
    int i;

    for (i = 0; i < top; i++)
        dst[i] = src[i];
}
