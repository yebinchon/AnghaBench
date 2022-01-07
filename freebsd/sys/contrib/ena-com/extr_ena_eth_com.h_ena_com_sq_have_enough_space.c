
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int descs_per_entry; } ;
struct ena_com_io_sq {scalar_t__ mem_queue_type; TYPE_1__ llq_info; } ;


 scalar_t__ ENA_ADMIN_PLACEMENT_POLICY_HOST ;
 int ena_com_free_desc (struct ena_com_io_sq*) ;

__attribute__((used)) static inline bool ena_com_sq_have_enough_space(struct ena_com_io_sq *io_sq,
      u16 required_buffers)
{
 int temp;

 if (io_sq->mem_queue_type == ENA_ADMIN_PLACEMENT_POLICY_HOST)
  return ena_com_free_desc(io_sq) >= required_buffers;






 temp = required_buffers / io_sq->llq_info.descs_per_entry + 2;

 return ena_com_free_desc(io_sq) > temp;
}
