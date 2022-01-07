
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long long* qend; } ;
struct mlx5_qp {unsigned long long* sq_start; TYPE_1__ sq; } ;


 scalar_t__ unlikely (int) ;

__attribute__((used)) static void mlx5_bf_copy(unsigned long long *dst, unsigned long long *src,
    unsigned bytecnt, struct mlx5_qp *qp)
{
 while (bytecnt > 0) {
  *dst++ = *src++;
  *dst++ = *src++;
  *dst++ = *src++;
  *dst++ = *src++;
  *dst++ = *src++;
  *dst++ = *src++;
  *dst++ = *src++;
  *dst++ = *src++;
  bytecnt -= 8 * sizeof(unsigned long long);
  if (unlikely(src == qp->sq.qend))
   src = qp->sq_start;
 }
}
