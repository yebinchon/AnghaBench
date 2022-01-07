
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {scalar_t__ calls; int flags; int fd; int out; int in; } ;


 int WAITING_READ ;
 int WAITING_WRITE ;
 int close (int ) ;
 int dispatch_release (int ) ;
 int dispatch_resume (int ) ;
 int dispatch_source_cancel (int ) ;
 int free (struct client*) ;

__attribute__((used)) static int
maybe_close(struct client *c)
{
    if (c->calls != 0)
 return 0;
    if (c->flags & (WAITING_READ|WAITING_WRITE))
 return 0;
    close(c->fd);
    free(c);
    return 1;
}
