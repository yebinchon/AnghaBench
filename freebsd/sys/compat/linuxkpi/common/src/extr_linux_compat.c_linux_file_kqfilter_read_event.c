
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m; } ;
struct linux_file {int f_kqflags; TYPE_1__ f_kqlock; } ;
struct knote {struct linux_file* kn_hook; } ;


 int LINUX_KQ_FLAG_NEED_READ ;
 int MA_OWNED ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static int
linux_file_kqfilter_read_event(struct knote *kn, long hint)
{
 struct linux_file *filp = kn->kn_hook;

 mtx_assert(&filp->f_kqlock.m, MA_OWNED);

 return ((filp->f_kqflags & LINUX_KQ_FLAG_NEED_READ) ? 1 : 0);
}
