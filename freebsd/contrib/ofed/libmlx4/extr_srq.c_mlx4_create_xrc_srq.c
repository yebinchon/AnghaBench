
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ buf; } ;
struct ibv_srq {int dummy; } ;
struct TYPE_10__ {struct ibv_srq srq; int srq_num; } ;
struct mlx4_srq {int max_gs; int ext_srq; TYPE_3__ buf; struct mlx4_srq* wrid; scalar_t__* db; TYPE_6__ verbs_srq; scalar_t__ counter; int max; int lock; } ;
struct mlx4_create_xsrq {uintptr_t buf_addr; uintptr_t db_addr; int ibv_cmd; } ;
struct mlx4_create_srq_resp {int ibv_resp; } ;
struct TYPE_9__ {int max_wr; int max_sge; } ;
struct ibv_srq_init_attr_ex {TYPE_4__ attr; int pd; } ;
struct ibv_context {int dummy; } ;
struct TYPE_7__ {int xsrq_table; } ;


 int MLX4_DB_TYPE_RQ ;
 int PTHREAD_PROCESS_PRIVATE ;
 int align_queue_size (int) ;
 struct mlx4_srq* calloc (int,int) ;
 int free (struct mlx4_srq*) ;
 int ibv_cmd_create_srq_ex (struct ibv_context*,TYPE_6__*,int,struct ibv_srq_init_attr_ex*,int *,int,int *,int) ;
 int ibv_cmd_destroy_srq (struct ibv_srq*) ;
 scalar_t__* mlx4_alloc_db (TYPE_1__*,int ) ;
 scalar_t__ mlx4_alloc_srq_buf (int ,TYPE_4__*,struct mlx4_srq*) ;
 int mlx4_free_buf (TYPE_3__*) ;
 int mlx4_free_db (TYPE_1__*,int ,scalar_t__*) ;
 int mlx4_store_xsrq (int *,int ,struct mlx4_srq*) ;
 scalar_t__ pthread_spin_init (int *,int ) ;
 TYPE_1__* to_mctx (struct ibv_context*) ;

struct ibv_srq *mlx4_create_xrc_srq(struct ibv_context *context,
        struct ibv_srq_init_attr_ex *attr_ex)
{
 struct mlx4_create_xsrq cmd;
 struct mlx4_create_srq_resp resp;
 struct mlx4_srq *srq;
 int ret;


 if (attr_ex->attr.max_wr > 1 << 16 || attr_ex->attr.max_sge > 64)
  return ((void*)0);

 srq = calloc(1, sizeof *srq);
 if (!srq)
  return ((void*)0);

 if (pthread_spin_init(&srq->lock, PTHREAD_PROCESS_PRIVATE))
  goto err;

 srq->max = align_queue_size(attr_ex->attr.max_wr + 1);
 srq->max_gs = attr_ex->attr.max_sge;
 srq->counter = 0;
 srq->ext_srq = 1;

 if (mlx4_alloc_srq_buf(attr_ex->pd, &attr_ex->attr, srq))
  goto err;

 srq->db = mlx4_alloc_db(to_mctx(context), MLX4_DB_TYPE_RQ);
 if (!srq->db)
  goto err_free;

 *srq->db = 0;

 cmd.buf_addr = (uintptr_t) srq->buf.buf;
 cmd.db_addr = (uintptr_t) srq->db;

 ret = ibv_cmd_create_srq_ex(context, &srq->verbs_srq,
        sizeof(srq->verbs_srq),
        attr_ex,
        &cmd.ibv_cmd, sizeof cmd,
        &resp.ibv_resp, sizeof resp);
 if (ret)
  goto err_db;

 ret = mlx4_store_xsrq(&to_mctx(context)->xsrq_table,
         srq->verbs_srq.srq_num, srq);
 if (ret)
  goto err_destroy;

 return &srq->verbs_srq.srq;

err_destroy:
 ibv_cmd_destroy_srq(&srq->verbs_srq.srq);
err_db:
 mlx4_free_db(to_mctx(context), MLX4_DB_TYPE_RQ, srq->db);
err_free:
 free(srq->wrid);
 mlx4_free_buf(&srq->buf);
err:
 free(srq);
 return ((void*)0);
}
