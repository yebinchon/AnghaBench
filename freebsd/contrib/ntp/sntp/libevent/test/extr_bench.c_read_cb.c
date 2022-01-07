
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int evutil_socket_t ;
typedef int ev_ssize_t ;
typedef int ev_intptr_t ;
typedef int ch ;


 int count ;
 int failures ;
 int fired ;
 int num_pipes ;
 int * pipes ;
 int recv (int ,char*,int,int ) ;
 int send (int ,char*,int,int ) ;
 scalar_t__ writes ;

__attribute__((used)) static void
read_cb(evutil_socket_t fd, short which, void *arg)
{
 ev_intptr_t idx = (ev_intptr_t) arg, widx = idx + 1;
 u_char ch;
 ev_ssize_t n;

 n = recv(fd, (char*)&ch, sizeof(ch), 0);
 if (n >= 0)
  count += n;
 else
  failures++;
 if (writes) {
  if (widx >= num_pipes)
   widx -= num_pipes;
  n = send(pipes[2 * widx + 1], "e", 1, 0);
  if (n != 1)
   failures++;
  writes--;
  fired++;
 }
}
