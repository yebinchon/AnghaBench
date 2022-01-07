
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct mbdata {int dummy; } ;


 int be32toh (int ) ;
 int mb_get_uint32 (struct mbdata*,int *) ;

int
mb_get_uint32be(struct mbdata *mbp, u_int32_t *x)
{
 u_int32_t v;
 int error;

 error = mb_get_uint32(mbp, &v);
 *x = be32toh(v);
 return error;
}
