
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xdrproc_t ;
struct TYPE_6__ {int valdat_len; int valdat_val; } ;
struct TYPE_5__ {int keydat_len; int keydat_val; } ;
struct ypresp_key_val {TYPE_3__ val; TYPE_2__ key; int stat; } ;
struct TYPE_4__ {char* keydat_val; int keydat_len; } ;
struct ypreq_key {char* domain; char* map; TYPE_1__ key; } ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
struct dom_binding {int dom_client; } ;


 int MAX_RETRIES ;
 int RPC_SUCCESS ;
 int YPERR_BADARGS ;
 int YPERR_DOMAIN ;
 int YPERR_RESRC ;
 int YPERR_RPC ;
 int YPLOCK () ;
 int YPPROC_NEXT ;
 int YPUNLOCK () ;
 scalar_t__ _yp_dobind (char*,struct dom_binding**) ;
 int _yp_unbind (struct dom_binding*) ;
 int _yplib_timeout ;
 int bcopy (int ,char*,int) ;
 int bzero (char*,int) ;
 int clnt_call (int ,int ,int ,struct ypreq_key*,int ,struct ypresp_key_val*,struct timeval) ;
 int clnt_perror (int ,char*) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int strlen (char*) ;
 int xdr_free (int ,struct ypresp_key_val*) ;
 scalar_t__ xdr_ypreq_key ;
 scalar_t__ xdr_ypresp_key_val ;
 int ypprot_err (int ) ;

int
yp_next(char *indomain, char *inmap, char *inkey, int inkeylen,
    char **outkey, int *outkeylen, char **outval, int *outvallen)
{
 struct ypresp_key_val yprkv;
 struct ypreq_key yprk;
 struct dom_binding *ysd;
 struct timeval tv;
 int r;
 int retries = 0;


 if (inkey == ((void*)0) || !strlen(inkey) || inkeylen <= 0 ||
     inmap == ((void*)0) || !strlen(inmap) ||
     indomain == ((void*)0) || !strlen(indomain))
  return (YPERR_BADARGS);

 *outkey = *outval = ((void*)0);
 *outkeylen = *outvallen = 0;

 YPLOCK();
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

 yprk.domain = indomain;
 yprk.map = inmap;
 yprk.key.keydat_val = inkey;
 yprk.key.keydat_len = inkeylen;
 bzero((char *)&yprkv, sizeof yprkv);

 r = clnt_call(ysd->dom_client, YPPROC_NEXT,
  (xdrproc_t)xdr_ypreq_key, &yprk,
  (xdrproc_t)xdr_ypresp_key_val, &yprkv, tv);
 if (r != RPC_SUCCESS) {
  clnt_perror(ysd->dom_client, "yp_next: clnt_call");
  _yp_unbind(ysd);
  retries++;
  goto again;
 }
 if (!(r = ypprot_err(yprkv.stat))) {
  *outkeylen = yprkv.key.keydat_len;
  *outkey = (char *)malloc(*outkeylen+1);
  if (*outkey == ((void*)0)) {
   _yp_unbind(ysd);
   *outkeylen = 0;
   xdr_free((xdrproc_t)xdr_ypresp_key_val, &yprkv);
   YPUNLOCK();
   return (YPERR_RESRC);
  }
  bcopy(yprkv.key.keydat_val, *outkey, *outkeylen);
  (*outkey)[*outkeylen] = '\0';
  *outvallen = yprkv.val.valdat_len;
  *outval = (char *)malloc(*outvallen+1);
  if (*outval == ((void*)0)) {
   free(*outkey);
   _yp_unbind(ysd);
   *outkeylen = *outvallen = 0;
   xdr_free((xdrproc_t)xdr_ypresp_key_val, &yprkv);
   YPUNLOCK();
   return (YPERR_RESRC);
  }
  bcopy(yprkv.val.valdat_val, *outval, *outvallen);
  (*outval)[*outvallen] = '\0';
 }

 xdr_free((xdrproc_t)xdr_ypresp_key_val, &yprkv);
 YPUNLOCK();
 return (r);
}
