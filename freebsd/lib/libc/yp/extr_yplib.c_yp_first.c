
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xdrproc_t ;
struct TYPE_4__ {int valdat_len; int valdat_val; } ;
struct TYPE_3__ {int keydat_len; int keydat_val; } ;
struct ypresp_key_val {TYPE_2__ val; TYPE_1__ key; int stat; } ;
struct ypreq_nokey {char* domain; char* map; } ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
struct dom_binding {int dom_client; } ;


 int MAX_RETRIES ;
 int RPC_SUCCESS ;
 int YPERR_BADARGS ;
 int YPERR_DOMAIN ;
 int YPERR_RESRC ;
 int YPERR_RPC ;
 int YPLOCK () ;
 int YPPROC_FIRST ;
 int YPUNLOCK () ;
 scalar_t__ _yp_dobind (char*,struct dom_binding**) ;
 int _yp_unbind (struct dom_binding*) ;
 int _yplib_timeout ;
 int bcopy (int ,char*,int) ;
 int bzero (char*,int) ;
 int clnt_call (int ,int ,int ,struct ypreq_nokey*,int ,struct ypresp_key_val*,struct timeval) ;
 int clnt_perror (int ,char*) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int strlen (char*) ;
 int xdr_free (int ,struct ypresp_key_val*) ;
 scalar_t__ xdr_ypreq_nokey ;
 scalar_t__ xdr_ypresp_key_val ;
 int ypprot_err (int ) ;

int
yp_first(char *indomain, char *inmap, char **outkey, int *outkeylen,
    char **outval, int *outvallen)
{
 struct ypresp_key_val yprkv;
 struct ypreq_nokey yprnk;
 struct dom_binding *ysd;
 struct timeval tv;
 int r;
 int retries = 0;


 if (indomain == ((void*)0) || !strlen(indomain) ||
     inmap == ((void*)0) || !strlen(inmap))
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

 yprnk.domain = indomain;
 yprnk.map = inmap;
 bzero((char *)&yprkv, sizeof yprkv);

 r = clnt_call(ysd->dom_client, YPPROC_FIRST,
  (xdrproc_t)xdr_ypreq_nokey, &yprnk,
  (xdrproc_t)xdr_ypresp_key_val, &yprkv, tv);
 if (r != RPC_SUCCESS) {
  clnt_perror(ysd->dom_client, "yp_first: clnt_call");
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
