
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int des_block ;
typedef int caddr_t ;
typedef int bool_t ;
typedef int XDR ;


 int assert (int ) ;
 int xdr_opaque (int *,int ,int) ;

bool_t
xdr_des_block(XDR *xdrs, des_block *blkp)
{

 assert(xdrs != ((void*)0));
 assert(blkp != ((void*)0));

 return (xdr_opaque(xdrs, (caddr_t)(void *)blkp, sizeof(des_block)));
}
