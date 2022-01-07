
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_cq {int dummy; } ;
struct c4iw_cq {int dummy; } ;


 int cq ;
 struct c4iw_cq* to_c4iw_xxx (int ,int ) ;

__attribute__((used)) static inline struct c4iw_cq *to_c4iw_cq(struct ibv_cq *ibcq)
{
 return to_c4iw_xxx(cq, cq);
}
