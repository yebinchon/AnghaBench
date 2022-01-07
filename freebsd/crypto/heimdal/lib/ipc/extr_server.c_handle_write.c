
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {size_t olen; int flags; int * outmsg; int fd; } ;
typedef size_t ssize_t ;


 int WAITING_CLOSE ;
 int WAITING_WRITE ;
 int free (int *) ;
 int memmove (int *,int *,size_t) ;
 size_t write (int ,int *,size_t) ;

__attribute__((used)) static void
handle_write(struct client *c)
{
    ssize_t len;

    len = write(c->fd, c->outmsg, c->olen);
    if (len <= 0) {
 c->flags |= WAITING_CLOSE;
 c->flags &= ~(WAITING_WRITE);
    } else if (c->olen != (size_t)len) {
 memmove(&c->outmsg[0], &c->outmsg[len], c->olen - len);
 c->olen -= len;
    } else {
 c->olen = 0;
 free(c->outmsg);
 c->outmsg = ((void*)0);
 c->flags &= ~(WAITING_WRITE);
    }
}
