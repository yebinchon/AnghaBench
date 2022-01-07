
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct rsocket {scalar_t__ sq_size; scalar_t__ rq_size; int cm_id; } ;


 int RS_QP_MAX_SIZE ;
 scalar_t__ RS_QP_MIN_SIZE ;
 scalar_t__ min (int ,int ) ;
 int ucma_max_qpsize (int ) ;

__attribute__((used)) static void rs_set_qp_size(struct rsocket *rs)
{
 uint16_t max_size;

 max_size = min(ucma_max_qpsize(rs->cm_id), RS_QP_MAX_SIZE);

 if (rs->sq_size > max_size)
  rs->sq_size = max_size;
 else if (rs->sq_size < RS_QP_MIN_SIZE)
  rs->sq_size = RS_QP_MIN_SIZE;

 if (rs->rq_size > max_size)
  rs->rq_size = max_size;
 else if (rs->rq_size < RS_QP_MIN_SIZE)
  rs->rq_size = RS_QP_MIN_SIZE;
}
