
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct t4_wq {TYPE_1__ sq; } ;


 int T4_SQ_ONCHIP ;

__attribute__((used)) static inline int t4_sq_onchip(struct t4_wq *wq)
{
 return wq->sq.flags & T4_SQ_ONCHIP;
}
