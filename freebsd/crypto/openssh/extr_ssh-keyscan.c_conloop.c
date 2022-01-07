
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
typedef int fd_set ;
typedef int fd_mask ;
struct TYPE_6__ {int c_fd; struct timeval c_tv; } ;
typedef TYPE_1__ con ;
struct TYPE_7__ {int c_name; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ EWOULDBLOCK ;
 scalar_t__ FD_ISSET (int,int *) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int c_link ;
 int confree (int) ;
 int conread (int) ;
 int conrecycle (int) ;
 scalar_t__ errno ;
 int error (char*,int ) ;
 TYPE_2__* fdcon ;
 int free (int *) ;
 int maxfd ;
 int memcpy (int *,int ,int) ;
 int monotime_tv (struct timeval*) ;
 int read_wait ;
 int read_wait_nfdset ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int timerclear (struct timeval*) ;
 int tq ;
 int * xcalloc (int,int) ;

__attribute__((used)) static void
conloop(void)
{
 struct timeval seltime, now;
 fd_set *r, *e;
 con *c;
 int i;

 monotime_tv(&now);
 c = TAILQ_FIRST(&tq);

 if (c && (c->c_tv.tv_sec > now.tv_sec ||
     (c->c_tv.tv_sec == now.tv_sec && c->c_tv.tv_usec > now.tv_usec))) {
  seltime = c->c_tv;
  seltime.tv_sec -= now.tv_sec;
  seltime.tv_usec -= now.tv_usec;
  if (seltime.tv_usec < 0) {
   seltime.tv_usec += 1000000;
   seltime.tv_sec--;
  }
 } else
  timerclear(&seltime);

 r = xcalloc(read_wait_nfdset, sizeof(fd_mask));
 e = xcalloc(read_wait_nfdset, sizeof(fd_mask));
 memcpy(r, read_wait, read_wait_nfdset * sizeof(fd_mask));
 memcpy(e, read_wait, read_wait_nfdset * sizeof(fd_mask));

 while (select(maxfd, r, ((void*)0), e, &seltime) == -1 &&
     (errno == EAGAIN || errno == EINTR || errno == EWOULDBLOCK))
  ;

 for (i = 0; i < maxfd; i++) {
  if (FD_ISSET(i, e)) {
   error("%s: exception!", fdcon[i].c_name);
   confree(i);
  } else if (FD_ISSET(i, r))
   conread(i);
 }
 free(r);
 free(e);

 c = TAILQ_FIRST(&tq);
 while (c && (c->c_tv.tv_sec < now.tv_sec ||
     (c->c_tv.tv_sec == now.tv_sec && c->c_tv.tv_usec < now.tv_usec))) {
  int s = c->c_fd;

  c = TAILQ_NEXT(c, c_link);
  conrecycle(s);
 }
}
