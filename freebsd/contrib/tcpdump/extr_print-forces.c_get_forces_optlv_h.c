
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct optlv_h {int dummy; } ;


 size_t F_OP_MAX ;
 size_t F_OP_RSV ;
 struct optlv_h const* OPTLV_msg ;

__attribute__((used)) static inline const struct optlv_h *get_forces_optlv_h(uint16_t opt)
{
 if (opt > F_OP_MAX || opt <= F_OP_RSV)
  return &OPTLV_msg[F_OP_RSV];

 return &OPTLV_msg[opt];
}
