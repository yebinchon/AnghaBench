
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int evp_decodeblock_int (int *,unsigned char*,unsigned char const*,int) ;

int EVP_DecodeBlock(unsigned char *t, const unsigned char *f, int n)
{
    return evp_decodeblock_int(((void*)0), t, f, n);
}
