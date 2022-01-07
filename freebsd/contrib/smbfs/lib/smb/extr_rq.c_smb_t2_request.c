
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbioc_t2rq {int* ioc_setup; int ioc_setupcnt; char* ioc_name; int ioc_tparamcnt; int ioc_tdatacnt; int ioc_rparamcnt; int ioc_rdatacnt; void* ioc_rdata; void* ioc_rparam; void* ioc_tdata; void* ioc_tparam; } ;
struct smb_ctx {int ct_fd; } ;
typedef int krq ;


 int SMBIOC_T2RQ ;
 int bzero (struct smbioc_t2rq*,int) ;
 int errno ;
 int ioctl (int ,int ,struct smbioc_t2rq*) ;

int
smb_t2_request(struct smb_ctx *ctx, int setup, int setupcount,
 const char *name,
 int tparamcnt, void *tparam,
 int tdatacnt, void *tdata,
 int *rparamcnt, void *rparam,
 int *rdatacnt, void *rdata)
{
 struct smbioc_t2rq krq;

 bzero(&krq, sizeof(krq));
 krq.ioc_setup[0] = setup;
 krq.ioc_setupcnt = setupcount;
 krq.ioc_name = (char *)name;
 krq.ioc_tparamcnt = tparamcnt;
 krq.ioc_tparam = tparam;
 krq.ioc_tdatacnt = tdatacnt;
 krq.ioc_tdata = tdata;
 krq.ioc_rparamcnt = *rparamcnt;
 krq.ioc_rparam = rparam;
 krq.ioc_rdatacnt = *rdatacnt;
 krq.ioc_rdata = rdata;
 if (ioctl(ctx->ct_fd, SMBIOC_T2RQ, &krq) == -1)
  return errno;
 *rparamcnt = krq.ioc_rparamcnt;
 *rdatacnt = krq.ioc_rdatacnt;
 return 0;
}
