
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ buf; } ;
struct ibv_srq {int dummy; } ;
struct TYPE_4__ {struct ibv_srq srq; } ;
struct mlx4_srq {int max_gs; TYPE_2__ buf; struct mlx4_srq* wrid; scalar_t__* db; TYPE_1__ verbs_srq; scalar_t__ ext_srq; scalar_t__ counter; int max; int lock; } ;
struct mlx4_create_srq_resp {int ibv_resp; } ;
struct mlx4_create_srq {uintptr_t buf_addr; uintptr_t db_addr; int ibv_cmd; } ;
struct TYPE_6__ {int max_wr; int max_sge; } ;
struct ibv_srq_init_attr {TYPE_3__ attr; } ;
struct ibv_pd {int context; } ;


 int MLX4_DB_TYPE_RQ ;
 int PTHREAD_PROCESS_PRIVATE ;
 int align_queue_size (int) ;
 int free (struct mlx4_srq*) ;
 int ibv_cmd_create_srq (struct ibv_pd*,struct ibv_srq*,struct ibv_srq_init_attr*,int *,int,int *,int) ;
 struct mlx4_srq* malloc (int) ;
 scalar_t__* mlx4_alloc_db (int ,int ) ;
 scalar_t__ mlx4_alloc_srq_buf (struct ibv_pd*,TYPE_3__*,struct mlx4_srq*) ;
 int mlx4_free_buf (TYPE_2__*) ;
 int mlx4_free_db (int ,int ,scalar_t__*) ;
 scalar_t__ pthread_spin_init (int *,int ) ;
 int to_mctx (int ) ;

struct ibv_srq *mlx4_create_srq(struct ibv_pd *pd,
    struct ibv_srq_init_attr *attr)
{
 struct mlx4_create_srq cmd;
 struct mlx4_create_srq_resp resp;
 struct mlx4_srq *srq;
 int ret;


 if (attr->attr.max_wr > 1 << 16 || attr->attr.max_sge > 64)
  return ((void*)0);

 srq = malloc(sizeof *srq);
 if (!srq)
  return ((void*)0);

 if (pthread_spin_init(&srq->lock, PTHREAD_PROCESS_PRIVATE))
  goto err;

 srq->max = align_queue_size(attr->attr.max_wr + 1);
 srq->max_gs = attr->attr.max_sge;
 srq->counter = 0;
 srq->ext_srq = 0;

 if (mlx4_alloc_srq_buf(pd, &attr->attr, srq))
  goto err;

 srq->db = mlx4_alloc_db(to_mctx(pd->context), MLX4_DB_TYPE_RQ);
 if (!srq->db)
  goto err_free;

 *srq->db = 0;

 cmd.buf_addr = (uintptr_t) srq->buf.buf;
 cmd.db_addr = (uintptr_t) srq->db;

 ret = ibv_cmd_create_srq(pd, &srq->verbs_srq.srq, attr,
     &cmd.ibv_cmd, sizeof cmd,
     &resp.ibv_resp, sizeof resp);
 if (ret)
  goto err_db;

 return &srq->verbs_srq.srq;

err_db:
 mlx4_free_db(to_mctx(pd->context), MLX4_DB_TYPE_RQ, srq->db);

err_free:
 free(srq->wrid);
 mlx4_free_buf(&srq->buf);

err:
 free(srq);

 return ((void*)0);
}
