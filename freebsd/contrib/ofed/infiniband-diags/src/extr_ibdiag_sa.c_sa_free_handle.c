
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa_handle {int fd; int agent; } ;


 int free (struct sa_handle*) ;
 int umad_close_port (int ) ;
 int umad_unregister (int ,int ) ;

void sa_free_handle(struct sa_handle * h)
{
 umad_unregister(h->fd, h->agent);
 umad_close_port(h->fd);
 free(h);
}
