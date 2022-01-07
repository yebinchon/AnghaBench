
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2_packet_data {scalar_t__ fd; } ;


 int eloop_unregister_read_sock (scalar_t__) ;
 int os_free (struct l2_packet_data*) ;

void l2_packet_deinit(struct l2_packet_data *l2)
{
 if (l2 == ((void*)0))
  return;

 if (l2->fd >= 0) {
  eloop_unregister_read_sock(l2->fd);

 }

 os_free(l2);
}
