
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct ibv_values_ex {int comp_mask; TYPE_1__ raw_clock; } ;
struct ibv_context {int dummy; } ;


 int IBV_VALUES_MASK_RAW_CLOCK ;
 int mlx4_read_clock (struct ibv_context*,int *) ;

int mlx4_query_rt_values(struct ibv_context *context,
    struct ibv_values_ex *values)
{
 uint32_t comp_mask = 0;
 int err = 0;

 if (values->comp_mask & IBV_VALUES_MASK_RAW_CLOCK) {
  uint64_t cycles;

  err = mlx4_read_clock(context, &cycles);
  if (!err) {
   values->raw_clock.tv_sec = 0;
   values->raw_clock.tv_nsec = cycles;
   comp_mask |= IBV_VALUES_MASK_RAW_CLOCK;
  }
 }

 values->comp_mask = comp_mask;

 return err;
}
