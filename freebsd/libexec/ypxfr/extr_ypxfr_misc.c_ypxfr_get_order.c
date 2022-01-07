
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int stat; unsigned long ordernum; } ;
typedef TYPE_1__ ypresp_order ;
struct TYPE_6__ {char* map; char* domain; } ;
typedef TYPE_2__ ypreq_nokey ;
typedef enum ypstat { ____Placeholder_ypstat } ypstat ;
typedef int CLIENT ;





 int YPPROG ;
 int YPVERS ;
 scalar_t__ YPXFR_NODOM ;
 scalar_t__ YPXFR_NOMAP ;
 scalar_t__ YPXFR_RPC ;
 scalar_t__ YPXFR_YPERR ;


 int YP_TRUE ;

 int * clnt_create (char*,int ,int ,char*) ;
 int clnt_destroy (int *) ;
 int clnt_spcreateerror (char*) ;
 int clnt_sperror (int *,char*) ;
 int yp_errno ;
 int yp_error (char*,int ) ;
 int yp_order (char*,char*,unsigned int*) ;
 TYPE_1__* ypproc_order_2 (TYPE_2__*,int *) ;

unsigned long
ypxfr_get_order(char *domain, char *map, char *source, const int yplib)
{
 if (yplib) {
  unsigned int order;
  int res;
  if ((res = yp_order(domain, map, &order))) {
   switch (res) {
   case 133:
    yp_errno = (enum ypstat)YPXFR_NODOM;
    break;
   case 132:
    yp_errno = (enum ypstat)YPXFR_NOMAP;
    break;
   case 131:
   default:
    yp_errno = (enum ypstat)YPXFR_YPERR;
    break;
   }
   return(0);
  } else
   return(order);
 } else {
  CLIENT *clnt;
  ypresp_order *resp;
  ypreq_nokey req;

  if ((clnt = clnt_create(source,YPPROG,YPVERS,"udp")) == ((void*)0)) {
   yp_error("%s",clnt_spcreateerror("couldn't create udp handle to ypserv"));

   yp_errno = (enum ypstat)YPXFR_RPC;
   return(0);
  }
  req.map = map;
  req.domain = domain;
  if ((resp = ypproc_order_2(&req, clnt)) == ((void*)0)) {
   yp_error("%s", clnt_sperror(clnt, "YPPROC_ORDER failed"));

   clnt_destroy(clnt);
   yp_errno = (enum ypstat)YPXFR_RPC;
   return(0);
  }
  clnt_destroy(clnt);
  if (resp->stat != YP_TRUE) {
   switch (resp->stat) {
   case 130:
    yp_errno = (enum ypstat)YPXFR_NODOM;
    break;
   case 129:
    yp_errno = (enum ypstat)YPXFR_NOMAP;
    break;
   case 128:
   default:
    yp_errno = (enum ypstat)YPXFR_YPERR;
    break;
   }
   return(0);
  }
  return(resp->ordernum);
 }
}
