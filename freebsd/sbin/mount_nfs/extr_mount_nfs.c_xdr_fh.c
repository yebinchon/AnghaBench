
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfhret {int vers; long fhsize; int auth; scalar_t__ stat; int nfh; } ;
typedef int caddr_t ;
typedef int XDR ;


 int AUTH_SYS ;
 scalar_t__ EAUTH ;
 long NFS3_FHSIZE ;
 long NFS_FHSIZE ;
 int xdr_long (int *,long*) ;
 int xdr_opaque (int *,int ,long) ;
 int xdr_u_long (int *,scalar_t__*) ;

__attribute__((used)) static int
xdr_fh(XDR *xdrsp, struct nfhret *np)
{
 int i;
 long auth, authcnt, authfnd = 0;

 if (!xdr_u_long(xdrsp, &np->stat))
  return (0);
 if (np->stat)
  return (1);
 switch (np->vers) {
 case 1:
  np->fhsize = NFS_FHSIZE;
  return (xdr_opaque(xdrsp, (caddr_t)np->nfh, NFS_FHSIZE));
 case 3:
  if (!xdr_long(xdrsp, &np->fhsize))
   return (0);
  if (np->fhsize <= 0 || np->fhsize > NFS3_FHSIZE)
   return (0);
  if (!xdr_opaque(xdrsp, (caddr_t)np->nfh, np->fhsize))
   return (0);
  if (!xdr_long(xdrsp, &authcnt))
   return (0);
  for (i = 0; i < authcnt; i++) {
   if (!xdr_long(xdrsp, &auth))
    return (0);
   if (np->auth == -1) {
    np->auth = auth;
    authfnd++;
   } else if (auth == np->auth) {
    authfnd++;
   }
  }




  if (authcnt == 0 && np->auth == -1)
   np->auth = AUTH_SYS;
  if (!authfnd && (authcnt > 0 || np->auth != AUTH_SYS))
   np->stat = EAUTH;
  return (1);
 }
 return (0);
}
