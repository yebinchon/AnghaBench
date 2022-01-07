
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibv_wc {int dlid_path_bits; int sl; int slid; int pkey_index; int wc_flags; int src_qp; int qp_num; int imm_data; int byte_len; int vendor_err; int opcode; int status; int wr_id; } ;
struct ibv_poll_cq_resp {int count; TYPE_2__* wc; } ;
struct ibv_poll_cq {int ne; int cq_handle; } ;
struct ibv_kern_wc {int dummy; } ;
struct ibv_cq {TYPE_1__* context; int handle; } ;
struct TYPE_4__ {int dlid_path_bits; int sl; int slid; int pkey_index; int wc_flags; int src_qp; int qp_num; int imm_data; int byte_len; int vendor_err; int opcode; int status; int wr_id; } ;
struct TYPE_3__ {int cmd_fd; } ;


 int IBV_INIT_CMD_RESP (struct ibv_poll_cq*,int,int ,struct ibv_poll_cq_resp*,int) ;
 int POLL_CQ ;
 int VALGRIND_MAKE_MEM_DEFINED (struct ibv_poll_cq_resp*,int) ;
 int free (struct ibv_poll_cq_resp*) ;
 struct ibv_poll_cq_resp* malloc (int) ;
 int write (int ,struct ibv_poll_cq*,int) ;

int ibv_cmd_poll_cq(struct ibv_cq *ibcq, int ne, struct ibv_wc *wc)
{
 struct ibv_poll_cq cmd;
 struct ibv_poll_cq_resp *resp;
 int i;
 int rsize;
 int ret;

 rsize = sizeof *resp + ne * sizeof(struct ibv_kern_wc);
 resp = malloc(rsize);
 if (!resp)
  return -1;

 IBV_INIT_CMD_RESP(&cmd, sizeof cmd, POLL_CQ, resp, rsize);
 cmd.cq_handle = ibcq->handle;
 cmd.ne = ne;

 if (write(ibcq->context->cmd_fd, &cmd, sizeof cmd) != sizeof cmd) {
  ret = -1;
  goto out;
 }

 (void) VALGRIND_MAKE_MEM_DEFINED(resp, rsize);

 for (i = 0; i < resp->count; i++) {
  wc[i].wr_id = resp->wc[i].wr_id;
  wc[i].status = resp->wc[i].status;
  wc[i].opcode = resp->wc[i].opcode;
  wc[i].vendor_err = resp->wc[i].vendor_err;
  wc[i].byte_len = resp->wc[i].byte_len;
  wc[i].imm_data = resp->wc[i].imm_data;
  wc[i].qp_num = resp->wc[i].qp_num;
  wc[i].src_qp = resp->wc[i].src_qp;
  wc[i].wc_flags = resp->wc[i].wc_flags;
  wc[i].pkey_index = resp->wc[i].pkey_index;
  wc[i].slid = resp->wc[i].slid;
  wc[i].sl = resp->wc[i].sl;
  wc[i].dlid_path_bits = resp->wc[i].dlid_path_bits;
 }

 ret = resp->count;

out:
 free(resp);
 return ret;
}
