
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int si_note; } ;
struct TYPE_3__ {int it_interval; int it_value; } ;
struct timerfd {int tfd_lock; TYPE_2__ tfd_sel; int tfd_callout; TYPE_1__ tfd_time; } ;
struct thread {int dummy; } ;
struct file {scalar_t__ f_type; int * f_ops; struct timerfd* f_data; } ;


 scalar_t__ DTYPE_LINUXTFD ;
 int EINVAL ;
 int M_EPOLL ;
 int badfileops ;
 int callout_drain (int *) ;
 int free (struct timerfd*,int ) ;
 int knlist_destroy (int *) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int seldrain (TYPE_2__*) ;
 int timespecclear (int *) ;

__attribute__((used)) static int
timerfd_close(struct file *fp, struct thread *td)
{
 struct timerfd *tfd;

 tfd = fp->f_data;
 if (fp->f_type != DTYPE_LINUXTFD || tfd == ((void*)0))
  return (EINVAL);

 timespecclear(&tfd->tfd_time.it_value);
 timespecclear(&tfd->tfd_time.it_interval);

 mtx_lock(&tfd->tfd_lock);
 callout_drain(&tfd->tfd_callout);
 mtx_unlock(&tfd->tfd_lock);

 seldrain(&tfd->tfd_sel);
 knlist_destroy(&tfd->tfd_sel.si_note);

 fp->f_ops = &badfileops;
 mtx_destroy(&tfd->tfd_lock);
 free(tfd, M_EPOLL);

 return (0);
}
