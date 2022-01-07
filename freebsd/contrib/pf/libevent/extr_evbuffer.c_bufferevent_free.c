
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int output; int input; int ev_write; int ev_read; } ;


 int evbuffer_free (int ) ;
 int event_del (int *) ;
 int free (struct bufferevent*) ;

void
bufferevent_free(struct bufferevent *bufev)
{
 event_del(&bufev->ev_read);
 event_del(&bufev->ev_write);

 evbuffer_free(bufev->input);
 evbuffer_free(bufev->output);

 free(bufev);
}
