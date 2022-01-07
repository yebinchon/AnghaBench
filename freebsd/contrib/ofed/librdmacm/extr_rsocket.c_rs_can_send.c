
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsocket {int opts; int sqe_avail; scalar_t__ sbuf_bytes_avail; scalar_t__ sseq_no; scalar_t__ sseq_comp; size_t target_sge; TYPE_1__* target_sgl; } ;
struct TYPE_2__ {scalar_t__ length; } ;


 int RS_OPT_MSG_SEND ;
 scalar_t__ RS_SNDLOWAT ;

__attribute__((used)) static int rs_can_send(struct rsocket *rs)
{
 if (!(rs->opts & RS_OPT_MSG_SEND)) {
  return rs->sqe_avail && (rs->sbuf_bytes_avail >= RS_SNDLOWAT) &&
         (rs->sseq_no != rs->sseq_comp) &&
         (rs->target_sgl[rs->target_sge].length != 0);
 } else {
  return (rs->sqe_avail >= 2) && (rs->sbuf_bytes_avail >= RS_SNDLOWAT) &&
         (rs->sseq_no != rs->sseq_comp) &&
         (rs->target_sgl[rs->target_sge].length != 0);
 }
}
