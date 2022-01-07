
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int be32dec (unsigned char const*) ;

__attribute__((used)) static int
xdr_u_int(const unsigned char **xdr, u_int *ip)
{
 *ip = be32dec(*xdr);
 (*xdr) += 4;
 return (0);
}
