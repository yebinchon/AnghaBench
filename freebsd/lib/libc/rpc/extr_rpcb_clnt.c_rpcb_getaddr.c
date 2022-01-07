
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct netconfig {int dummy; } ;
struct netbuf {scalar_t__ len; scalar_t__ maxlen; struct netbuf* buf; } ;
typedef int rpcvers_t ;
typedef int rpcprog_t ;
typedef int bool_t ;
struct TYPE_2__ {int cf_stat; } ;
typedef int CLIENT ;


 int FALSE ;
 int RPC_FAILED ;
 int TRUE ;
 struct netbuf* __rpcb_findaddr_timed (int ,int ,struct netconfig*,char*,int **,struct timeval*) ;
 int free (struct netbuf*) ;
 int memcpy (struct netbuf*,struct netbuf*,size_t) ;
 TYPE_1__ rpc_createerr ;

bool_t
rpcb_getaddr(rpcprog_t program, rpcvers_t version, const struct netconfig *nconf,
    struct netbuf *address, const char *host)
{
 struct netbuf *na;

 if ((na = __rpcb_findaddr_timed(program, version,
     (struct netconfig *) nconf, (char *) host,
     (CLIENT **) ((void*)0), (struct timeval *) ((void*)0))) == ((void*)0))
  return (FALSE);

 if (na->len > address->maxlen) {

  free(na->buf);
  free(na);
  rpc_createerr.cf_stat = RPC_FAILED;
  return (FALSE);
 }
 memcpy(address->buf, na->buf, (size_t)na->len);
 address->len = na->len;
 free(na->buf);
 free(na);
 return (TRUE);
}
