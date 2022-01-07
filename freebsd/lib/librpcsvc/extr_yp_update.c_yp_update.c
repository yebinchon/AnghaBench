
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xdrproc_t ;
struct TYPE_8__ {int yp_buf_len; char* yp_buf_val; } ;
struct TYPE_7__ {int yp_buf_len; char* yp_buf_val; } ;
struct ypupdate_args {char* mapname; TYPE_2__ datum; TYPE_1__ key; } ;
struct ypdelete_args {char* mapname; TYPE_2__ datum; TYPE_1__ key; } ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int des_block ;
struct TYPE_9__ {int * cl_auth; } ;
typedef TYPE_3__ CLIENT ;
typedef int AUTH ;


 int MAXNETNAMELEN ;
 int RPC_AUTHERROR ;
 int RPC_SUCCESS ;
 int TIMEOUT ;
 int WINDOW ;
 unsigned int YPERR_ACCESS ;
 int YPERR_BADARGS ;
 int YPERR_DOMAIN ;
 int YPERR_RESRC ;
 int YPERR_RPC ;




 int YPU_CHANGE ;
 int YPU_DELETE ;
 int YPU_INSERT ;
 int YPU_PROG ;
 int YPU_STORE ;
 int YPU_VERS ;
 int auth_destroy (int *) ;
 scalar_t__ authdes_create (char*,int ,int *,int *) ;
 int clnt_call (TYPE_3__*,int ,int ,struct ypupdate_args*,int ,unsigned int*,struct timeval) ;
 TYPE_3__* clnt_create (char*,int ,int ,char*) ;
 int clnt_destroy (TYPE_3__*) ;
 int free (char*) ;
 scalar_t__ getrpcport (char*,int ,int ,unsigned int) ;
 int host2netname (char*,char*,char*) ;
 int key_gendes (int *) ;
 int xdr_u_int ;
 int xdr_ypdelete_args ;
 int xdr_ypupdate_args ;
 int yp_master (char*,char*,char**) ;

int
yp_update(char *domain, char *map, unsigned int ypop, char *key, int keylen,
    char *data, int datalen)
{
 char *master;
 int rval;
 unsigned int res;
 struct ypupdate_args upargs;
 struct ypdelete_args delargs;
 CLIENT *clnt;
 char netname[MAXNETNAMELEN+1];
 des_block des_key;
 struct timeval timeout;


 if ((rval = yp_master(domain, map, &master)))
  return(rval);


 if (getrpcport(master, YPU_PROG, YPU_VERS, ypop))
  return(YPERR_DOMAIN);


 if ((clnt = clnt_create(master, YPU_PROG, YPU_VERS, "tcp")) == ((void*)0))
  return(YPERR_RPC);
 if (!host2netname(netname, master, domain)) {
  clnt_destroy(clnt);
  return(YPERR_BADARGS);
 }


 key_gendes(&des_key);


 if ((clnt->cl_auth = (AUTH *)authdes_create(netname, WINDOW, ((void*)0),
   &des_key)) == ((void*)0)) {
  clnt_destroy(clnt);
  return(YPERR_RESRC);
 }


 timeout.tv_usec = 0;
 timeout.tv_sec = TIMEOUT;
 switch (ypop) {
 case 131:
  upargs.mapname = map;
  upargs.key.yp_buf_len = keylen;
  upargs.key.yp_buf_val = key;
  upargs.datum.yp_buf_len = datalen;
  upargs.datum.yp_buf_val = data;

  if ((rval = clnt_call(clnt, YPU_CHANGE,
   (xdrproc_t)xdr_ypupdate_args, &upargs,
   (xdrproc_t)xdr_u_int, &res, timeout)) != RPC_SUCCESS) {
   if (rval == RPC_AUTHERROR)
    res = YPERR_ACCESS;
   else
    res = YPERR_RPC;
  }

  break;
 case 129:
  upargs.mapname = map;
  upargs.key.yp_buf_len = keylen;
  upargs.key.yp_buf_val = key;
  upargs.datum.yp_buf_len = datalen;
  upargs.datum.yp_buf_val = data;

  if ((rval = clnt_call(clnt, YPU_INSERT,
   (xdrproc_t)xdr_ypupdate_args, &upargs,
   (xdrproc_t)xdr_u_int, &res, timeout)) != RPC_SUCCESS) {
   if (rval == RPC_AUTHERROR)
    res = YPERR_ACCESS;
   else
    res = YPERR_RPC;
  }

  break;
 case 130:
  delargs.mapname = map;
  delargs.key.yp_buf_len = keylen;
  delargs.key.yp_buf_val = key;

  if ((rval = clnt_call(clnt, YPU_DELETE,
   (xdrproc_t)xdr_ypdelete_args, &delargs,
   (xdrproc_t)xdr_u_int, &res, timeout)) != RPC_SUCCESS) {
   if (rval == RPC_AUTHERROR)
    res = YPERR_ACCESS;
   else
    res = YPERR_RPC;
  }

  break;
 case 128:
  upargs.mapname = map;
  upargs.key.yp_buf_len = keylen;
  upargs.key.yp_buf_val = key;
  upargs.datum.yp_buf_len = datalen;
  upargs.datum.yp_buf_val = data;

  if ((rval = clnt_call(clnt, YPU_STORE,
   (xdrproc_t)xdr_ypupdate_args, &upargs,
   (xdrproc_t)xdr_u_int, &res, timeout)) != RPC_SUCCESS) {
   if (rval == RPC_AUTHERROR)
    res = YPERR_ACCESS;
   else
    res = YPERR_RPC;
  }

  break;
 default:
  res = YPERR_BADARGS;
  break;
 }


 auth_destroy(clnt->cl_auth);
 clnt_destroy(clnt);
 free(master);

 return(res);
}
