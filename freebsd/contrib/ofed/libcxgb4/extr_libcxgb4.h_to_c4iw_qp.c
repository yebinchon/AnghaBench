
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_qp {int dummy; } ;
struct c4iw_qp {int dummy; } ;


 int qp ;
 struct c4iw_qp* to_c4iw_xxx (int ,int ) ;

__attribute__((used)) static inline struct c4iw_qp *to_c4iw_qp(struct ibv_qp *ibqp)
{
 return to_c4iw_xxx(qp, qp);
}
