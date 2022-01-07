
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct write_state {int niovecs; int allociovecs; int maxiovecs; TYPE_1__* iovecs; int fd; } ;
struct TYPE_4__ {size_t iov_len; void* iov_base; } ;


 scalar_t__ STEP ;
 TYPE_1__* erealloc (TYPE_1__*,int) ;
 int err (int,char*) ;
 int min (scalar_t__,int) ;
 scalar_t__ writev (int ,TYPE_1__*,int) ;

__attribute__((used)) static void
write_state_add (struct write_state *w, void *v, size_t len)
{
    if(w->niovecs == w->allociovecs) {
 if(w->niovecs == w->maxiovecs) {
     if(writev (w->fd, w->iovecs, w->niovecs) < 0)
  err(1, "writev");
     w->niovecs = 0;
 } else {
     w->allociovecs = min(w->allociovecs + STEP, w->maxiovecs);
     w->iovecs = erealloc (w->iovecs,
      w->allociovecs * sizeof(*w->iovecs));
 }
    }
    w->iovecs[w->niovecs].iov_base = v;
    w->iovecs[w->niovecs].iov_len = len;
    ++w->niovecs;
}
