
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_pd {int dummy; } ;
struct c4iw_pd {int dummy; } ;


 int pd ;
 struct c4iw_pd* to_c4iw_xxx (int ,int ) ;

__attribute__((used)) static inline struct c4iw_pd *to_c4iw_pd(struct ibv_pd *ibpd)
{
 return to_c4iw_xxx(pd, pd);
}
