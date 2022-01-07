
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bvector ;


 int VEC_ADDMANY (int ,void const*,size_t) ;

__attribute__((used)) static void
dn_append(void *ctx, const void *buf, size_t len)
{
 VEC_ADDMANY(*(bvector *)ctx, buf, len);
}
