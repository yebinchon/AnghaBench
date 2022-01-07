
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_state {scalar_t__ niovecs; int iovecs; int fd; } ;


 int err (int,char*) ;
 scalar_t__ writev (int ,int ,scalar_t__) ;

__attribute__((used)) static void
write_state_flush (struct write_state *w)
{
    if (w->niovecs) {
 if (writev (w->fd, w->iovecs, w->niovecs) < 0)
     err (1, "writev");
 w->niovecs = 0;
    }
}
