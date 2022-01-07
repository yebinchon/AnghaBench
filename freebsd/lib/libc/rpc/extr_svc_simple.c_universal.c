
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ xdrproc_t ;
struct svc_req {scalar_t__ rq_proc; scalar_t__ rq_prog; scalar_t__ rq_vers; } ;
struct proglst {scalar_t__ p_prognum; scalar_t__ p_procnum; scalar_t__ p_versnum; char* p_xdrbuf; char* (* p_progname ) (char*) ;scalar_t__ p_outproc; int p_inproc; scalar_t__ p_recvsz; int p_netid; struct proglst* p_nxt; } ;
typedef scalar_t__ rpcvers_t ;
typedef scalar_t__ rpcprog_t ;
typedef scalar_t__ rpcproc_t ;
struct TYPE_7__ {int xp_netid; } ;
typedef TYPE_1__ SVCXPRT ;


 scalar_t__ FALSE ;
 scalar_t__ NULLPROC ;
 int memset (char*,int ,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct proglst* proglst ;
 int proglst_lock ;
 scalar_t__ strcmp (int ,int ) ;
 char* stub1 (char*) ;
 int svc_freeargs (TYPE_1__*,int ,char*) ;
 int svc_getargs (TYPE_1__*,int ,char*) ;
 scalar_t__ svc_sendreply (TYPE_1__*,scalar_t__,char*) ;
 int svcerr_decode (TYPE_1__*) ;
 int warnx (char*,...) ;
 scalar_t__ xdr_void ;

__attribute__((used)) static void
universal(struct svc_req *rqstp, SVCXPRT *transp)
{
 rpcprog_t prog;
 rpcvers_t vers;
 rpcproc_t proc;
 char *outdata;
 char *xdrbuf;
 struct proglst *pl;




 if (rqstp->rq_proc == NULLPROC) {
  if (svc_sendreply(transp, (xdrproc_t) xdr_void, ((void*)0)) ==
      FALSE) {
   warnx("svc_sendreply failed");
  }
  return;
 }
 prog = rqstp->rq_prog;
 vers = rqstp->rq_vers;
 proc = rqstp->rq_proc;
 mutex_lock(&proglst_lock);
 for (pl = proglst; pl; pl = pl->p_nxt)
  if (pl->p_prognum == prog && pl->p_procnum == proc &&
   pl->p_versnum == vers &&
   (strcmp(pl->p_netid, transp->xp_netid) == 0)) {

   xdrbuf = pl->p_xdrbuf;

   (void) memset(xdrbuf, 0, (size_t)pl->p_recvsz);





   if (!svc_getargs(transp, pl->p_inproc, xdrbuf)) {
    svcerr_decode(transp);
    mutex_unlock(&proglst_lock);
    return;
   }
   outdata = (*(pl->p_progname))(xdrbuf);
   if (outdata == ((void*)0) &&
    pl->p_outproc != (xdrproc_t) xdr_void){

    mutex_unlock(&proglst_lock);
    return;
   }
   if (!svc_sendreply(transp, pl->p_outproc, outdata)) {
    warnx(
   "rpc: rpc_reg trouble replying to prog %u vers %u",
    (unsigned)prog, (unsigned)vers);
    mutex_unlock(&proglst_lock);
    return;
   }

   (void)svc_freeargs(transp, pl->p_inproc, xdrbuf);
   mutex_unlock(&proglst_lock);
   return;
  }
 mutex_unlock(&proglst_lock);

 warnx("rpc: rpc_reg: never registered prog %u vers %u",
  (unsigned)prog, (unsigned)vers);
 return;
}
