
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;
typedef int buf ;


 short EV_ET ;
 int called ;
 int event_del (void*) ;
 int recv (int ,char*,int,int ) ;
 int was_et ;

__attribute__((used)) static void
read_cb(evutil_socket_t fd, short event, void *arg)
{
 char buf;
 int len;

 len = recv(fd, &buf, sizeof(buf), 0);

 called++;
 if (event & EV_ET)
  was_et = 1;

 if (!len)
  event_del(arg);
}
