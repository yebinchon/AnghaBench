
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_mr {int dummy; } ;
struct c4iw_mr {int dummy; } ;


 int mr ;
 struct c4iw_mr* to_c4iw_xxx (int ,int ) ;

__attribute__((used)) static inline struct c4iw_mr *to_c4iw_mr(struct ibv_mr *ibmr)
{
 return to_c4iw_xxx(mr, mr);
}
