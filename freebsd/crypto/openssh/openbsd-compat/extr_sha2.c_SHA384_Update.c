
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int SHA512_CTX ;


 int SHA512_Update (int *,int const*,size_t) ;

void
SHA384_Update(SHA512_CTX *context, const u_int8_t *data, size_t len)
{
 SHA512_Update(context, data, len);
}
