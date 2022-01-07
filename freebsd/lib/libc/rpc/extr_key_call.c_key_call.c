
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
typedef int u_long ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
typedef int des_block ;
typedef int cryptkeyres ;
typedef int CLIENT ;


 int KEY_DECRYPT_PK ;
 int KEY_ENCRYPT_PK ;
 int KEY_GEN ;
 int KEY_GET_CONV ;
 int KEY_NET_GET ;
 int KEY_NET_PUT ;
 scalar_t__ RPC_SUCCESS ;
 int TOTAL_TIMEOUT ;
 int * __key_decryptsession_pk_LOCAL (int ,void*) ;
 int * __key_encryptsession_pk_LOCAL (int ,void*) ;
 int * __key_gendes_LOCAL (int ,int ) ;
 scalar_t__ clnt_call (int *,int ,int ,void*,int ,void*,struct timeval) ;
 int geteuid () ;
 int * getkeyserv_handle (int) ;
 int * stub1 (int ,void*) ;
 int * stub2 (int ,void*) ;
 int * stub3 (int ,int ) ;

__attribute__((used)) static int
key_call(u_long proc, xdrproc_t xdr_arg, void *arg, xdrproc_t xdr_rslt,
    void *rslt)
{
 CLIENT *clnt;
 struct timeval wait_time;

 if (proc == KEY_ENCRYPT_PK && __key_encryptsession_pk_LOCAL) {
  cryptkeyres *res;
  res = (*__key_encryptsession_pk_LOCAL)(geteuid(), arg);
  *(cryptkeyres*)rslt = *res;
  return (1);
 } else if (proc == KEY_DECRYPT_PK && __key_decryptsession_pk_LOCAL) {
  cryptkeyres *res;
  res = (*__key_decryptsession_pk_LOCAL)(geteuid(), arg);
  *(cryptkeyres*)rslt = *res;
  return (1);
 } else if (proc == KEY_GEN && __key_gendes_LOCAL) {
  des_block *res;
  res = (*__key_gendes_LOCAL)(geteuid(), 0);
  *(des_block*)rslt = *res;
  return (1);
 }

 if ((proc == KEY_ENCRYPT_PK) || (proc == KEY_DECRYPT_PK) ||
     (proc == KEY_NET_GET) || (proc == KEY_NET_PUT) ||
     (proc == KEY_GET_CONV))
  clnt = getkeyserv_handle(2);
 else
  clnt = getkeyserv_handle(1);

 if (clnt == ((void*)0)) {
  return (0);
 }

 wait_time.tv_sec = TOTAL_TIMEOUT;
 wait_time.tv_usec = 0;

 if (clnt_call(clnt, proc, xdr_arg, arg, xdr_rslt, rslt,
  wait_time) == RPC_SUCCESS) {
  return (1);
 } else {
  return (0);
 }
}
