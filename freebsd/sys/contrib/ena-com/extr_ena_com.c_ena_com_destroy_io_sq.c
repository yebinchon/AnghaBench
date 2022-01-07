
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ena_com_io_sq {scalar_t__ direction; int idx; } ;
struct ena_com_admin_queue {int dummy; } ;
struct ena_com_dev {struct ena_com_admin_queue admin_queue; } ;
struct ena_admin_aq_entry {int dummy; } ;
struct TYPE_4__ {int opcode; } ;
struct TYPE_3__ {int sq_identity; int sq_idx; } ;
struct ena_admin_aq_destroy_sq_cmd {TYPE_2__ aq_common_descriptor; TYPE_1__ sq; } ;
struct ena_admin_acq_entry {int dummy; } ;
struct ena_admin_acq_destroy_sq_resp_desc {int dummy; } ;
typedef int destroy_resp ;
typedef int destroy_cmd ;


 int ENA_ADMIN_DESTROY_SQ ;
 int ENA_ADMIN_SQ_DIRECTION_RX ;
 int ENA_ADMIN_SQ_DIRECTION_TX ;
 int ENA_ADMIN_SQ_SQ_DIRECTION_MASK ;
 int ENA_ADMIN_SQ_SQ_DIRECTION_SHIFT ;
 scalar_t__ ENA_COM_IO_QUEUE_DIRECTION_TX ;
 int ENA_COM_NO_DEVICE ;
 int ena_com_execute_admin_command (struct ena_com_admin_queue*,struct ena_admin_aq_entry*,int,struct ena_admin_acq_entry*,int) ;
 int ena_trc_err (char*,int) ;
 int memset (struct ena_admin_aq_destroy_sq_cmd*,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ena_com_destroy_io_sq(struct ena_com_dev *ena_dev,
     struct ena_com_io_sq *io_sq)
{
 struct ena_com_admin_queue *admin_queue = &ena_dev->admin_queue;
 struct ena_admin_aq_destroy_sq_cmd destroy_cmd;
 struct ena_admin_acq_destroy_sq_resp_desc destroy_resp;
 u8 direction;
 int ret;

 memset(&destroy_cmd, 0x0, sizeof(destroy_cmd));

 if (io_sq->direction == ENA_COM_IO_QUEUE_DIRECTION_TX)
  direction = ENA_ADMIN_SQ_DIRECTION_TX;
 else
  direction = ENA_ADMIN_SQ_DIRECTION_RX;

 destroy_cmd.sq.sq_identity |= (direction <<
  ENA_ADMIN_SQ_SQ_DIRECTION_SHIFT) &
  ENA_ADMIN_SQ_SQ_DIRECTION_MASK;

 destroy_cmd.sq.sq_idx = io_sq->idx;
 destroy_cmd.aq_common_descriptor.opcode = ENA_ADMIN_DESTROY_SQ;

 ret = ena_com_execute_admin_command(admin_queue,
         (struct ena_admin_aq_entry *)&destroy_cmd,
         sizeof(destroy_cmd),
         (struct ena_admin_acq_entry *)&destroy_resp,
         sizeof(destroy_resp));

 if (unlikely(ret && (ret != ENA_COM_NO_DEVICE)))
  ena_trc_err("failed to destroy io sq error: %d\n", ret);

 return ret;
}
