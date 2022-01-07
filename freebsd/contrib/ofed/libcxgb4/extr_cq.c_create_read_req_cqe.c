
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* oldest_read; } ;
struct t4_wq {TYPE_3__ sq; } ;
struct TYPE_5__ {int cidx; } ;
struct TYPE_6__ {TYPE_1__ scqe; } ;
struct t4_cqe {int bits_type_ts; int header; int len; TYPE_2__ u; } ;
struct TYPE_8__ {int read_len; int idx; } ;


 int CQE_QPID (struct t4_cqe*) ;
 int FW_RI_READ_REQ ;
 int SW_CQE (struct t4_cqe*) ;
 int V_CQE_OPCODE (int ) ;
 int V_CQE_QPID (int ) ;
 int V_CQE_SWCQE (int ) ;
 int V_CQE_TYPE (int) ;
 int be32toh (int ) ;
 int htobe32 (int) ;

__attribute__((used)) static void create_read_req_cqe(struct t4_wq *wq, struct t4_cqe *hw_cqe,
    struct t4_cqe *read_cqe)
{
 read_cqe->u.scqe.cidx = wq->sq.oldest_read->idx;
 read_cqe->len = be32toh(wq->sq.oldest_read->read_len);
 read_cqe->header = htobe32(V_CQE_QPID(CQE_QPID(hw_cqe)) |
     V_CQE_SWCQE(SW_CQE(hw_cqe)) |
     V_CQE_OPCODE(FW_RI_READ_REQ) |
     V_CQE_TYPE(1));
 read_cqe->bits_type_ts = hw_cqe->bits_type_ts;
}
