
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {struct eventfd* kn_hook; } ;
struct eventfd {scalar_t__ efd_count; int efd_lock; } ;


 int MA_OWNED ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static int
filt_eventfdread(struct knote *kn, long hint)
{
 struct eventfd *efd = kn->kn_hook;
 int ret;

 mtx_assert(&efd->efd_lock, MA_OWNED);
 ret = (efd->efd_count > 0);

 return (ret);
}
