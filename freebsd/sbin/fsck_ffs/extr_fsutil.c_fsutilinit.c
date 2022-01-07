
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct timespec {int dummy; } ;
struct bufarea {int dummy; } ;


 int TAILQ_INIT (int *) ;
 int bufhead ;
 int bzero (int *,int) ;
 int cgblk ;
 int * cgbufs ;
 scalar_t__ diskreads ;
 int finishpass ;
 scalar_t__ flushtries ;
 scalar_t__ numbufs ;
 int slowio_delay_usec ;
 scalar_t__ slowio_pollcnt ;
 int slowio_starttime ;
 int startpass ;
 scalar_t__ totaldiskreads ;
 scalar_t__ totalreads ;

void
fsutilinit(void)
{
 diskreads = totaldiskreads = totalreads = 0;
 bzero(&startpass, sizeof(struct timespec));
 bzero(&finishpass, sizeof(struct timespec));
 bzero(&slowio_starttime, sizeof(struct timeval));
 slowio_delay_usec = 10000;
 slowio_pollcnt = 0;
 bzero(&cgblk, sizeof(struct bufarea));
 TAILQ_INIT(&bufhead);
 numbufs = 0;

 cgbufs = ((void*)0);
 flushtries = 0;
}
