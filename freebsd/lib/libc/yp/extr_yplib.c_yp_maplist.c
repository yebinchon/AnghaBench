
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct ypresp_maplist {struct ypmaplist* maps; int stat; } ;
struct ypmaplist {int dummy; } ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
struct dom_binding {int dom_client; } ;


 int RPC_SUCCESS ;
 int YPERR_BADARGS ;
 int YPERR_DOMAIN ;
 int YPLOCK () ;
 int YPPROC_MAPLIST ;
 int YPUNLOCK () ;
 scalar_t__ _yp_dobind (char*,struct dom_binding**) ;
 int _yp_unbind (struct dom_binding*) ;
 int _yplib_timeout ;
 int bzero (char*,int) ;
 int clnt_call (int ,int ,int ,char**,int ,struct ypresp_maplist*,struct timeval) ;
 int clnt_perror (int ,char*) ;
 int strlen (char*) ;
 scalar_t__ xdr_domainname ;
 scalar_t__ xdr_ypresp_maplist ;
 int ypprot_err (int ) ;

int
yp_maplist(char *indomain, struct ypmaplist **outmaplist)
{
 struct dom_binding *ysd;
 struct ypresp_maplist ypml;
 struct timeval tv;
 int r;



 if (indomain == ((void*)0) || !strlen(indomain))
  return (YPERR_BADARGS);

 YPLOCK();
again:
 if (_yp_dobind(indomain, &ysd) != 0) {
  YPUNLOCK();
  return (YPERR_DOMAIN);
 }

 tv.tv_sec = _yplib_timeout;
 tv.tv_usec = 0;

 bzero((char *)&ypml, sizeof ypml);

 r = clnt_call(ysd->dom_client, YPPROC_MAPLIST,
  (xdrproc_t)xdr_domainname, &indomain,
  (xdrproc_t)xdr_ypresp_maplist, &ypml,tv);
 if (r != RPC_SUCCESS) {
  clnt_perror(ysd->dom_client, "yp_maplist: clnt_call");
  _yp_unbind(ysd);
  goto again;
 }
 if (!(r = ypprot_err(ypml.stat))) {
  *outmaplist = ypml.maps;
 }


 YPUNLOCK();
 return (r);
}
