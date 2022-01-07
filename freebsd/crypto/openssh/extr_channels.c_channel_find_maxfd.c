
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct ssh_channels {size_t channels_alloc; int channel_max_fd; TYPE_1__** channels; } ;
struct TYPE_2__ {int efd; int wfd; int rfd; } ;
typedef TYPE_1__ Channel ;


 int MAXIMUM (int,int ) ;

__attribute__((used)) static void
channel_find_maxfd(struct ssh_channels *sc)
{
 u_int i;
 int max = 0;
 Channel *c;

 for (i = 0; i < sc->channels_alloc; i++) {
  c = sc->channels[i];
  if (c != ((void*)0)) {
   max = MAXIMUM(max, c->rfd);
   max = MAXIMUM(max, c->wfd);
   max = MAXIMUM(max, c->efd);
  }
 }
 sc->channel_max_fd = max;
}
