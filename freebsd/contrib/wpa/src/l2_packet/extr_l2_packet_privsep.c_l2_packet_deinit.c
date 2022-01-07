
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2_packet_data {scalar_t__ fd; struct l2_packet_data* own_socket_path; } ;


 int PRIVSEP_CMD_L2_UNREGISTER ;
 int close (scalar_t__) ;
 int eloop_unregister_read_sock (scalar_t__) ;
 int os_free (struct l2_packet_data*) ;
 int unlink (struct l2_packet_data*) ;
 int wpa_priv_cmd (struct l2_packet_data*,int ,int *,int ) ;

void l2_packet_deinit(struct l2_packet_data *l2)
{
 if (l2 == ((void*)0))
  return;

 if (l2->fd >= 0) {
  wpa_priv_cmd(l2, PRIVSEP_CMD_L2_UNREGISTER, ((void*)0), 0);
  eloop_unregister_read_sock(l2->fd);
  close(l2->fd);
 }

 if (l2->own_socket_path) {
  unlink(l2->own_socket_path);
  os_free(l2->own_socket_path);
 }

 os_free(l2);
}
