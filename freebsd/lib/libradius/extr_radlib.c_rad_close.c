
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rad_handle {int fd; int num_servers; TYPE_1__* servers; } ;
struct TYPE_2__ {struct rad_handle* secret; } ;


 int clear_password (struct rad_handle*) ;
 int close (int) ;
 int free (struct rad_handle*) ;
 int memset (struct rad_handle*,int ,int ) ;
 int strlen (struct rad_handle*) ;

void
rad_close(struct rad_handle *h)
{
 int srv;

 if (h->fd != -1)
  close(h->fd);
 for (srv = 0; srv < h->num_servers; srv++) {
  memset(h->servers[srv].secret, 0,
      strlen(h->servers[srv].secret));
  free(h->servers[srv].secret);
 }
 clear_password(h);
 free(h);
}
