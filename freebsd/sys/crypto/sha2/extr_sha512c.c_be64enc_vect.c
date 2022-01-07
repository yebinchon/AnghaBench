
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int be64enc (unsigned char*,int const) ;

__attribute__((used)) static void
be64enc_vect(unsigned char *dst, const uint64_t *src, size_t len)
{
 size_t i;

 for (i = 0; i < len / 8; i++)
  be64enc(dst + i * 8, src[i]);
}
