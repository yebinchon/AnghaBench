
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int ;


 int xdr_u_int (unsigned char const**,int*) ;

__attribute__((used)) static int
xdr_uint64_t(const unsigned char **xdr, uint64_t *lp)
{
 u_int hi, lo;

 xdr_u_int(xdr, &hi);
 xdr_u_int(xdr, &lo);
 *lp = (((uint64_t) hi) << 32) | lo;
 return (0);
}
