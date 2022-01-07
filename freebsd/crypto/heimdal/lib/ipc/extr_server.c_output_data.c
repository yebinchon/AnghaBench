
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {size_t olen; int flags; int * outmsg; } ;


 int WAITING_WRITE ;
 int abort () ;
 int * erealloc (int *,size_t) ;
 int memcpy (int *,void const*,size_t) ;

__attribute__((used)) static void
output_data(struct client *c, const void *data, size_t len)
{
    if (c->olen + len < c->olen)
 abort();
    c->outmsg = erealloc(c->outmsg, c->olen + len);
    memcpy(&c->outmsg[c->olen], data, len);
    c->olen += len;
    c->flags |= WAITING_WRITE;
}
