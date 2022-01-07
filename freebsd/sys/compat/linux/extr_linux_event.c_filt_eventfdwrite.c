
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {struct eventfd* kn_hook; } ;
struct eventfd {int efd_count; int efd_lock; } ;


 int MA_OWNED ;
 int UINT64_MAX ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static int
filt_eventfdwrite(struct knote *kn, long hint)
{
 struct eventfd *efd = kn->kn_hook;
 int ret;

 mtx_assert(&efd->efd_lock, MA_OWNED);
 ret = (UINT64_MAX - 1 > efd->efd_count);

 return (ret);
}
