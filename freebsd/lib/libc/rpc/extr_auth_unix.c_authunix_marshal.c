
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audata {int au_mpos; int au_marshed; } ;
typedef int bool_t ;
typedef int XDR ;
typedef int AUTH ;


 struct audata* AUTH_PRIVATE (int *) ;
 int XDR_PUTBYTES (int *,int ,int ) ;
 int assert (int ) ;

__attribute__((used)) static bool_t
authunix_marshal(AUTH *auth, XDR *xdrs)
{
 struct audata *au;

 assert(auth != ((void*)0));
 assert(xdrs != ((void*)0));

 au = AUTH_PRIVATE(auth);
 return (XDR_PUTBYTES(xdrs, au->au_marshed, au->au_mpos));
}
