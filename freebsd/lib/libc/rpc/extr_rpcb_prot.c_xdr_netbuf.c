
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int ;
struct netbuf {void* buf; int maxlen; int len; } ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int xdr_bytes (int *,char**,int *,int ) ;
 int xdr_u_int32_t (int *,int *) ;

bool_t
xdr_netbuf(XDR *xdrs, struct netbuf *objp)
{
 bool_t dummy;
 void **pp;

 if (!xdr_u_int32_t(xdrs, (u_int32_t *) &objp->maxlen)) {
  return (FALSE);
 }
 pp = &objp->buf;
 dummy = xdr_bytes(xdrs, (char **) pp,
   (u_int *)&(objp->len), objp->maxlen);
 return (dummy);
}
