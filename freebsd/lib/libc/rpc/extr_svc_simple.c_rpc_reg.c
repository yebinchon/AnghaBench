
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef void* xdrproc_t ;
typedef scalar_t__ u_int ;
struct proglst {char* p_netid; char* p_xdrbuf; scalar_t__ p_versnum; char* (* p_progname ) (char*) ;struct proglst* p_nxt; scalar_t__ p_recvsz; TYPE_1__* p_transp; void* p_outproc; void* p_inproc; scalar_t__ p_procnum; scalar_t__ p_prognum; } ;
struct netconfig {char* nc_netid; } ;
struct __rpc_sockinfo {int si_proto; int si_af; } ;
typedef scalar_t__ rpcvers_t ;
typedef scalar_t__ rpcprog_t ;
typedef scalar_t__ rpcproc_t ;
struct TYPE_5__ {int xp_fd; } ;
typedef TYPE_1__ SVCXPRT ;


 int FALSE ;
 scalar_t__ NULLPROC ;
 int RPC_ANYFD ;
 int SVC_DESTROY (TYPE_1__*) ;
 int TRUE ;
 char* __no_mem_str ;
 char* __reg_err1 ;
 char* __reg_err2 ;
 char* __reg_err3 ;
 int __rpc_endconf (void*) ;
 int __rpc_fd2sockinfo (int ,struct __rpc_sockinfo*) ;
 scalar_t__ __rpc_get_t_size (int ,int ,int ) ;
 struct netconfig* __rpc_getconf (void*) ;
 void* __rpc_setconf (char*) ;
 int free (char*) ;
 void* malloc (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct proglst* proglst ;
 int proglst_lock ;
 char* rpc_reg_err ;
 int rpc_reg_msg ;
 int rpcb_unset (scalar_t__,scalar_t__,struct netconfig*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 int svc_reg (TYPE_1__*,scalar_t__,scalar_t__,int ,struct netconfig*) ;
 TYPE_1__* svc_tli_create (int ,struct netconfig*,int *,int ,int ) ;
 int universal ;
 int warnx (char*,int ,...) ;

int
rpc_reg(rpcprog_t prognum, rpcvers_t versnum, rpcproc_t procnum,
    char *(*progname)(char *), xdrproc_t inproc, xdrproc_t outproc,
    char *nettype)
{
 struct netconfig *nconf;
 int done = FALSE;
 void *handle;


 if (procnum == NULLPROC) {
  warnx("%s can't reassign procedure number %u", rpc_reg_msg,
   NULLPROC);
  return (-1);
 }

 if (nettype == ((void*)0))
  nettype = "netpath";
 if ((handle = __rpc_setconf(nettype)) == ((void*)0)) {
  warnx(rpc_reg_err, rpc_reg_msg, __reg_err1);
  return (-1);
 }

 mutex_lock(&proglst_lock);
 while ((nconf = __rpc_getconf(handle)) != ((void*)0)) {
  struct proglst *pl;
  SVCXPRT *svcxprt;
  int madenow;
  u_int recvsz;
  char *xdrbuf;
  char *netid;

  madenow = FALSE;
  svcxprt = ((void*)0);
  recvsz = 0;
  xdrbuf = netid = ((void*)0);
  for (pl = proglst; pl; pl = pl->p_nxt) {
   if (strcmp(pl->p_netid, nconf->nc_netid) == 0) {
    svcxprt = pl->p_transp;
    xdrbuf = pl->p_xdrbuf;
    recvsz = pl->p_recvsz;
    netid = pl->p_netid;
    break;
   }
  }

  if (svcxprt == ((void*)0)) {
   struct __rpc_sockinfo si;

   svcxprt = svc_tli_create(RPC_ANYFD, nconf, ((void*)0), 0, 0);
   if (svcxprt == ((void*)0))
    continue;
   if (!__rpc_fd2sockinfo(svcxprt->xp_fd, &si)) {
    warnx(rpc_reg_err, rpc_reg_msg, __reg_err2);
    SVC_DESTROY(svcxprt);
    continue;
   }
   recvsz = __rpc_get_t_size(si.si_af, si.si_proto, 0);
   if (recvsz == 0) {
    warnx(rpc_reg_err, rpc_reg_msg, __reg_err3);
    SVC_DESTROY(svcxprt);
    continue;
   }
   if (((xdrbuf = malloc((unsigned)recvsz)) == ((void*)0)) ||
    ((netid = strdup(nconf->nc_netid)) == ((void*)0))) {
    warnx(rpc_reg_err, rpc_reg_msg, __no_mem_str);
    free(xdrbuf);
    free(netid);
    SVC_DESTROY(svcxprt);
    break;
   }
   madenow = TRUE;
  }




  for (pl = proglst; pl; pl = pl->p_nxt)
   if ((pl->p_prognum == prognum) &&
    (pl->p_versnum == versnum) &&
    (strcmp(pl->p_netid, netid) == 0))
    break;
  if (pl == ((void*)0)) {
   (void) rpcb_unset(prognum, versnum, nconf);
  } else {

   nconf = ((void*)0);
  }

  if (!svc_reg(svcxprt, prognum, versnum, universal, nconf)) {
   warnx("%s couldn't register prog %u vers %u for %s",
    rpc_reg_msg, (unsigned)prognum,
    (unsigned)versnum, netid);
   if (madenow) {
    SVC_DESTROY(svcxprt);
    free(xdrbuf);
    free(netid);
   }
   continue;
  }

  pl = malloc(sizeof (struct proglst));
  if (pl == ((void*)0)) {
   warnx(rpc_reg_err, rpc_reg_msg, __no_mem_str);
   if (madenow) {
    SVC_DESTROY(svcxprt);
    free(xdrbuf);
    free(netid);
   }
   break;
  }
  pl->p_progname = progname;
  pl->p_prognum = prognum;
  pl->p_versnum = versnum;
  pl->p_procnum = procnum;
  pl->p_inproc = inproc;
  pl->p_outproc = outproc;
  pl->p_transp = svcxprt;
  pl->p_xdrbuf = xdrbuf;
  pl->p_recvsz = recvsz;
  pl->p_netid = netid;
  pl->p_nxt = proglst;
  proglst = pl;
  done = TRUE;
 }
 __rpc_endconf(handle);
 mutex_unlock(&proglst_lock);

 if (done == FALSE) {
  warnx("%s can't find suitable transport for %s",
   rpc_reg_msg, nettype);
  return (-1);
 }
 return (0);
}
