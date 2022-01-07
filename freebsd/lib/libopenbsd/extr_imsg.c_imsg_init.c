
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
struct imsgbuf {int fd; int fds; int pid; TYPE_1__ w; int r; } ;


 int TAILQ_INIT (int *) ;
 int getpid () ;
 int memset (int *,int ,int) ;
 int msgbuf_init (TYPE_1__*) ;

void
imsg_init(struct imsgbuf *ibuf, int fd)
{
 msgbuf_init(&ibuf->w);
 memset(&ibuf->r, 0, sizeof(ibuf->r));
 ibuf->fd = fd;
 ibuf->w.fd = fd;
 ibuf->pid = getpid();
 TAILQ_INIT(&ibuf->fds);
}
