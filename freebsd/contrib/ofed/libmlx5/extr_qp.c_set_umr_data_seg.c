
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct mlx5_wqe_umr_klm_seg {int address; void* mkey; void* byte_count; } ;
struct mlx5_qp {int dummy; } ;
struct ibv_mw_bind_info {int addr; TYPE_1__* mr; int length; } ;
typedef int int32_t ;
typedef enum ibv_mw_type { ____Placeholder_ibv_mw_type } ibv_mw_type ;
struct TYPE_2__ {int lkey; } ;


 void* htobe32 (int ) ;
 int htobe64 (int ) ;
 int memset (struct mlx5_wqe_umr_klm_seg*,int ,int) ;

__attribute__((used)) static void set_umr_data_seg(struct mlx5_qp *qp, enum ibv_mw_type type,
        int32_t rkey, struct ibv_mw_bind_info *bind_info,
        uint32_t qpn, void **seg, int *size)
{
 union {
  struct mlx5_wqe_umr_klm_seg klm;
  uint8_t reserved[64];
 } *data = *seg;

 data->klm.byte_count = htobe32(bind_info->length);
 data->klm.mkey = htobe32(bind_info->mr->lkey);
 data->klm.address = htobe64(bind_info->addr);

 memset(&data->klm + 1, 0, sizeof(data->reserved) -
        sizeof(data->klm));

 *seg += sizeof(*data);
 *size += (sizeof(*data) / 16);
}
