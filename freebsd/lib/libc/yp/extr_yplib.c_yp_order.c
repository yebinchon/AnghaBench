
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct ypresp_order {int ordernum; int stat; } ;
struct ypreq_nokey {char* domain; char* map; } ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
struct dom_binding {int dom_client; } ;


 int RPC_PROCUNAVAIL ;
 int RPC_SUCCESS ;
 int YPERR_BADARGS ;
 int YPERR_DOMAIN ;
 int YPERR_YPERR ;
 int YPLOCK () ;
 int YPPROC_ORDER ;
 int YPUNLOCK () ;
 scalar_t__ _yp_dobind (char*,struct dom_binding**) ;
 int _yp_unbind (struct dom_binding*) ;
 int _yplib_timeout ;
 int bzero (char*,int) ;
 int clnt_call (int ,int ,int ,struct ypreq_nokey*,int ,struct ypresp_order*,struct timeval) ;
 int clnt_perror (int ,char*) ;
 int strlen (char*) ;
 int xdr_free (int ,struct ypresp_order*) ;
 scalar_t__ xdr_ypreq_nokey ;
 scalar_t__ xdr_ypresp_order ;
 int ypprot_err (int ) ;

int
yp_order(char *indomain, char *inmap, int *outorder)
{
  struct dom_binding *ysd;
 struct ypresp_order ypro;
 struct ypreq_nokey yprnk;
 struct timeval tv;
 int r;



 if (indomain == ((void*)0) || !strlen(indomain) ||
     inmap == ((void*)0) || !strlen(inmap))
  return (YPERR_BADARGS);

 YPLOCK();
again:
 if (_yp_dobind(indomain, &ysd) != 0) {
  YPUNLOCK();
  return (YPERR_DOMAIN);
 }

 tv.tv_sec = _yplib_timeout;
 tv.tv_usec = 0;

 yprnk.domain = indomain;
 yprnk.map = inmap;

 bzero((char *)(char *)&ypro, sizeof ypro);

 r = clnt_call(ysd->dom_client, YPPROC_ORDER,
  (xdrproc_t)xdr_ypreq_nokey, &yprnk,
  (xdrproc_t)xdr_ypresp_order, &ypro, tv);





 if (r == RPC_PROCUNAVAIL) {
  YPUNLOCK();
  return(YPERR_YPERR);
 }

 if (r != RPC_SUCCESS) {
  clnt_perror(ysd->dom_client, "yp_order: clnt_call");
  _yp_unbind(ysd);
  goto again;
 }

 if (!(r = ypprot_err(ypro.stat))) {
  *outorder = ypro.ordernum;
 }

 xdr_free((xdrproc_t)xdr_ypresp_order, &ypro);
 YPUNLOCK();
 return (r);
}
