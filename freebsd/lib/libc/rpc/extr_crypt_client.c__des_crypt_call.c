
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int xdrproc_t ;
struct netconfig {int * nc_protofmly; } ;
struct desparams {scalar_t__ des_dir; scalar_t__ des_mode; char* des_ivec; char* des_key; } ;
struct TYPE_9__ {char* desbuf_val; } ;
struct TYPE_10__ {int stat; char* des_ivec; TYPE_2__ desbuf; } ;
typedef TYPE_3__ desresp ;
struct TYPE_8__ {int desbuf_len; char* desbuf_val; } ;
struct TYPE_11__ {char* des_ivec; char* des_key; int des_mode; int des_dir; TYPE_1__ desbuf; } ;
typedef TYPE_4__ desargs ;
typedef int CLIENT ;


 scalar_t__ CBC ;
 int CBC_DES ;
 int CRYPT_PROG ;
 int CRYPT_VERS ;
 int DECRYPT_DES ;
 int DESERR_HWERROR ;
 int DESERR_NOHWDEVICE ;
 int DESERR_NONE ;
 int ECB_DES ;
 scalar_t__ ENCRYPT ;
 int ENCRYPT_DES ;
 int NC_LOOPBACK ;
 int bcopy (char*,char*,int) ;
 int clnt_destroy (int *) ;
 int clnt_freeres (int *,int ,TYPE_3__*) ;
 int * clnt_tp_create (int *,int ,int ,struct netconfig*) ;
 TYPE_3__* des_crypt_1 (TYPE_4__*,int *) ;
 int endnetconfig (void*) ;
 struct netconfig* getnetconfig (void*) ;
 int nc_sperror () ;
 void* setnetconfig () ;
 scalar_t__ strcmp (int *,int ) ;
 int warnx (char*,int ) ;
 scalar_t__ xdr_desresp ;

int
_des_crypt_call(char *buf, int len, struct desparams *dparms)
{
 CLIENT *clnt;
 desresp *result_1;
 desargs des_crypt_1_arg;
 struct netconfig *nconf;
 void *localhandle;
 int stat;

 nconf = ((void*)0);
 localhandle = setnetconfig();
 while ((nconf = getnetconfig(localhandle)) != ((void*)0)) {
  if (nconf->nc_protofmly != ((void*)0) &&
       strcmp(nconf->nc_protofmly, NC_LOOPBACK) == 0)
   break;
 }
 if (nconf == ((void*)0)) {
  warnx("getnetconfig: %s", nc_sperror());
  endnetconfig(localhandle);
  return(DESERR_HWERROR);
 }
 clnt = clnt_tp_create(((void*)0), CRYPT_PROG, CRYPT_VERS, nconf);
 if (clnt == (CLIENT *) ((void*)0)) {
  endnetconfig(localhandle);
  return(DESERR_HWERROR);
 }
 endnetconfig(localhandle);

 des_crypt_1_arg.desbuf.desbuf_len = len;
 des_crypt_1_arg.desbuf.desbuf_val = buf;
 des_crypt_1_arg.des_dir = (dparms->des_dir == ENCRYPT) ? ENCRYPT_DES : DECRYPT_DES;
 des_crypt_1_arg.des_mode = (dparms->des_mode == CBC) ? CBC_DES : ECB_DES;
 bcopy(dparms->des_ivec, des_crypt_1_arg.des_ivec, 8);
 bcopy(dparms->des_key, des_crypt_1_arg.des_key, 8);

 result_1 = des_crypt_1(&des_crypt_1_arg, clnt);
 if (result_1 == (desresp *) ((void*)0)) {
  clnt_destroy(clnt);
  return(DESERR_HWERROR);
 }

 stat = result_1->stat;

 if (result_1->stat == DESERR_NONE ||
     result_1->stat == DESERR_NOHWDEVICE) {
  bcopy(result_1->desbuf.desbuf_val, buf, len);
  bcopy(result_1->des_ivec, dparms->des_ivec, 8);
 }

 clnt_freeres(clnt, (xdrproc_t)xdr_desresp, result_1);
 clnt_destroy(clnt);

 return(stat);
}
