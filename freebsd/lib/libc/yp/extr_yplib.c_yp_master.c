
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct ypresp_master {int peer; int stat; } ;
struct ypreq_nokey {char* domain; char* map; } ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
struct dom_binding {int dom_client; } ;


 int RPC_SUCCESS ;
 int YPERR_BADARGS ;
 int YPERR_DOMAIN ;
 int YPLOCK () ;
 int YPPROC_MASTER ;
 int YPUNLOCK () ;
 scalar_t__ _yp_dobind (char*,struct dom_binding**) ;
 int _yp_unbind (struct dom_binding*) ;
 int _yplib_timeout ;
 int bzero (char*,int) ;
 int clnt_call (int ,int ,int ,struct ypreq_nokey*,int ,struct ypresp_master*,struct timeval) ;
 int clnt_perror (int ,char*) ;
 scalar_t__ strdup (int ) ;
 int strlen (char*) ;
 int xdr_free (int ,struct ypresp_master*) ;
 scalar_t__ xdr_ypreq_nokey ;
 scalar_t__ xdr_ypresp_master ;
 int ypprot_err (int ) ;

int
yp_master(char *indomain, char *inmap, char **outname)
{
 struct dom_binding *ysd;
 struct ypresp_master yprm;
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

 bzero((char *)&yprm, sizeof yprm);

 r = clnt_call(ysd->dom_client, YPPROC_MASTER,
  (xdrproc_t)xdr_ypreq_nokey, &yprnk,
  (xdrproc_t)xdr_ypresp_master, &yprm, tv);
 if (r != RPC_SUCCESS) {
  clnt_perror(ysd->dom_client, "yp_master: clnt_call");
  _yp_unbind(ysd);
  goto again;
 }

 if (!(r = ypprot_err(yprm.stat))) {
  *outname = (char *)strdup(yprm.peer);
 }

 xdr_free((xdrproc_t)xdr_ypresp_master, &yprm);
 YPUNLOCK();
 return (r);
}
