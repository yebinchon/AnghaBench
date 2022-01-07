
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mb_count; } ;
struct smb_rq {int rq_wcount; TYPE_1__ rq_rq; } ;


 int smb_error (char*,int ) ;

void
smb_rq_wend(struct smb_rq *rqp)
{
 if (rqp->rq_rq.mb_count & 1)
  smb_error("smbrq_wend: odd word count\n", 0);
 rqp->rq_wcount = rqp->rq_rq.mb_count / 2;
 rqp->rq_rq.mb_count = 0;
}
