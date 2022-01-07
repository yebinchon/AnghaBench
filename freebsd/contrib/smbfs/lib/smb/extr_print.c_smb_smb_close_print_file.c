
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_rq {int dummy; } ;
struct smb_ctx {int dummy; } ;
struct mbdata {int dummy; } ;
typedef int smbfh ;


 int SMB_COM_CLOSE_PRINT_FILE ;
 int mb_put_mem (struct mbdata*,char*,int) ;
 int smb_rq_done (struct smb_rq*) ;
 struct mbdata* smb_rq_getrequest (struct smb_rq*) ;
 int smb_rq_init (struct smb_ctx*,int ,int ,struct smb_rq**) ;
 int smb_rq_simple (struct smb_rq*) ;
 int smb_rq_wend (struct smb_rq*) ;

int
smb_smb_close_print_file(struct smb_ctx *ctx, smbfh fh)
{
 struct smb_rq *rqp;
 struct mbdata *mbp;
 int error;

 error = smb_rq_init(ctx, SMB_COM_CLOSE_PRINT_FILE, 0, &rqp);
 if (error)
  return error;
 mbp = smb_rq_getrequest(rqp);
 mb_put_mem(mbp, (char*)&fh, 2);
 smb_rq_wend(rqp);
 error = smb_rq_simple(rqp);
 smb_rq_done(rqp);
 return error;
}
