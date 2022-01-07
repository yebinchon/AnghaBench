
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;
typedef int buf ;


 int n_read_and_drain_cb ;
 int read (int ,char*,int) ;

__attribute__((used)) static void
read_and_drain_cb(evutil_socket_t fd, short what, void *arg)
{
 char buf[128];
 int n;
 ++n_read_and_drain_cb;
 while ((n = read(fd, buf, sizeof(buf))) > 0)
  ;
}
