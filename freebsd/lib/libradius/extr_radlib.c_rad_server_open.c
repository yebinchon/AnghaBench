
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rad_handle {int fd; int type; } ;


 int RADIUS_SERVER ;
 struct rad_handle* rad_open () ;

struct rad_handle *
rad_server_open(int fd)
{
 struct rad_handle *h;

 h = rad_open();
 if (h != ((void*)0)) {
         h->type = RADIUS_SERVER;
         h->fd = fd;
 }
 return h;
}
