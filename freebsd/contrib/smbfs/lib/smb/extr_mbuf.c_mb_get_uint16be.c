
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct mbdata {int dummy; } ;


 int be16toh (int ) ;
 int mb_get_uint16 (struct mbdata*,int *) ;

int
mb_get_uint16be(struct mbdata *mbp, u_int16_t *x) {
 u_int16_t v;
 int error = mb_get_uint16(mbp, &v);

 *x = be16toh(v);
 return error;
}
