
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xdrproc_t ;
struct TYPE_6__ {int valdat_len; int valdat_val; } ;
struct ypresp_val {TYPE_2__ val; int stat; } ;
struct TYPE_5__ {char* keydat_val; int keydat_len; } ;
struct ypreq_key {char* domain; char* map; TYPE_1__ key; } ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
struct dom_binding {int dom_client; } ;


 int MAX_RETRIES ;
 int RPC_SUCCESS ;
 scalar_t__ TRUE ;
 int YPERR_BADARGS ;
 int YPERR_DOMAIN ;
 int YPERR_RESRC ;
 int YPERR_RPC ;
 int YPLOCK () ;
 int YPPROC_MATCH ;
 int YPUNLOCK () ;
 scalar_t__ _yp_dobind (char*,struct dom_binding**) ;
 int _yp_unbind (struct dom_binding*) ;
 int _yplib_timeout ;
 int bcopy (int ,char*,int) ;
 int bzero (char*,int) ;
 int clnt_call (int ,int ,int ,struct ypreq_key*,int ,struct ypresp_val*,struct timeval) ;
 int clnt_perror (int ,char*) ;
 scalar_t__ malloc (int) ;
 int strlen (char const*) ;
 int xdr_free (int ,struct ypresp_val*) ;
 scalar_t__ xdr_ypreq_key ;
 scalar_t__ xdr_ypresp_val ;
 int ypmatch_cache_insert (struct dom_binding*,char*,TYPE_1__*,TYPE_2__*) ;
 scalar_t__ ypmatch_cache_lookup (struct dom_binding*,char*,TYPE_1__*,TYPE_2__*) ;
 int ypprot_err (int ) ;

int
yp_match(char *indomain, char *inmap, const char *inkey, int inkeylen,
    char **outval, int *outvallen)
{
 struct dom_binding *ysd;
 struct ypresp_val yprv;
 struct timeval tv;
 struct ypreq_key yprk;
 int r;
 int retries = 0;
 *outval = ((void*)0);
 *outvallen = 0;



 if (inkey == ((void*)0) || !strlen(inkey) || inkeylen <= 0 ||
     inmap == ((void*)0) || !strlen(inmap) ||
     indomain == ((void*)0) || !strlen(indomain))
  return (YPERR_BADARGS);

 YPLOCK();
 if (_yp_dobind(indomain, &ysd) != 0) {
  YPUNLOCK();
  return(YPERR_DOMAIN);
 }

 yprk.domain = indomain;
 yprk.map = inmap;
 yprk.key.keydat_val = (char *)inkey;
 yprk.key.keydat_len = inkeylen;
again:
 if (retries > MAX_RETRIES) {
  YPUNLOCK();
  return (YPERR_RPC);
 }

 if (_yp_dobind(indomain, &ysd) != 0) {
  YPUNLOCK();
  return (YPERR_DOMAIN);
 }

 tv.tv_sec = _yplib_timeout;
 tv.tv_usec = 0;

 bzero((char *)&yprv, sizeof yprv);

 r = clnt_call(ysd->dom_client, YPPROC_MATCH,
  (xdrproc_t)xdr_ypreq_key, &yprk,
  (xdrproc_t)xdr_ypresp_val, &yprv, tv);
 if (r != RPC_SUCCESS) {
  clnt_perror(ysd->dom_client, "yp_match: clnt_call");
  _yp_unbind(ysd);
  retries++;
  goto again;
 }

 if (!(r = ypprot_err(yprv.stat))) {
  *outvallen = yprv.val.valdat_len;
  *outval = (char *)malloc(*outvallen+1);
  if (*outval == ((void*)0)) {
   _yp_unbind(ysd);
   *outvallen = 0;
   xdr_free((xdrproc_t)xdr_ypresp_val, &yprv);
   YPUNLOCK();
   return (YPERR_RESRC);
  }
  bcopy(yprv.val.valdat_val, *outval, *outvallen);
  (*outval)[*outvallen] = '\0';



 }

 xdr_free((xdrproc_t)xdr_ypresp_val, &yprv);
 YPUNLOCK();
 return (r);
}
