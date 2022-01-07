
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
typedef scalar_t__ u_long ;
struct ypreq_nokey {char* domain; char* map; } ;
struct ypall_callback {scalar_t__ data; int foreach; } ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct dom_binding {struct sockaddr_in dom_server_addr; } ;
typedef int CLIENT ;


 int MAX_RETRIES ;
 int RPC_ANYSOCK ;
 scalar_t__ RPC_SUCCESS ;
 int YPERR_BADARGS ;
 int YPERR_DOMAIN ;
 int YPERR_PMAP ;
 int YPERR_RPC ;
 int YPLOCK () ;
 int YPPROC_ALL ;
 int YPPROG ;
 int YPUNLOCK () ;
 int YPVERS ;
 scalar_t__ YP_NOMORE ;
 scalar_t__ _yp_dobind (char*,struct dom_binding**) ;
 int _yp_unbind (struct dom_binding*) ;
 int _yplib_timeout ;
 scalar_t__ clnt_call (int *,int ,int ,struct ypreq_nokey*,int ,scalar_t__*,struct timeval) ;
 int clnt_destroy (int *) ;
 int clnt_perror (int *,char*) ;
 int * clnttcp_create (struct sockaddr_in*,int ,int ,int*,int ,int ) ;
 int printf (char*) ;
 int strlen (char*) ;
 int xdr_free (int ,scalar_t__*) ;
 scalar_t__ xdr_ypreq_nokey ;
 scalar_t__ xdr_ypresp_all_seq ;
 int ypprot_err (scalar_t__) ;
 int ypresp_allfn ;
 void* ypresp_data ;

int
yp_all(char *indomain, char *inmap, struct ypall_callback *incallback)
{
 struct ypreq_nokey yprnk;
 struct dom_binding *ysd;
 struct timeval tv;
 struct sockaddr_in clnt_sin;
 CLIENT *clnt;
 u_long status, savstat;
 int clnt_sock;
 int retries = 0;


 if (indomain == ((void*)0) || !strlen(indomain) ||
     inmap == ((void*)0) || !strlen(inmap))
  return (YPERR_BADARGS);

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



 clnt_sock = RPC_ANYSOCK;
 clnt_sin = ysd->dom_server_addr;
 clnt_sin.sin_port = 0;
 clnt = clnttcp_create(&clnt_sin, YPPROG, YPVERS, &clnt_sock, 0, 0);
 if (clnt == ((void*)0)) {
  YPUNLOCK();
  printf("clnttcp_create failed\n");
  return (YPERR_PMAP);
 }

 yprnk.domain = indomain;
 yprnk.map = inmap;
 ypresp_allfn = incallback->foreach;
 ypresp_data = (void *)incallback->data;

 if (clnt_call(clnt, YPPROC_ALL,
  (xdrproc_t)xdr_ypreq_nokey, &yprnk,
  (xdrproc_t)xdr_ypresp_all_seq, &status, tv) != RPC_SUCCESS) {
   clnt_perror(clnt, "yp_all: clnt_call");
   clnt_destroy(clnt);
   _yp_unbind(ysd);
   retries++;
   goto again;
 }

 clnt_destroy(clnt);
 savstat = status;
 xdr_free((xdrproc_t)xdr_ypresp_all_seq, &status);
 YPUNLOCK();
 if (savstat != YP_NOMORE)
  return (ypprot_err(savstat));
 return (0);
}
